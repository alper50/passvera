---
name: passvera-architecture
description: >-
  Passvera Flutter password-manager architecture, layer rules, and feature
  patterns (Clean Architecture, BLoC, domain, secure storage). Use when adding
  features, refactoring, fixing bugs, creating BLoCs/screens/repositories, or
  changing storage, auth, onboard, routing, DI, or UI structure in this app.
---

# Passvera Architecture

Offline Flutter password manager. Local-only: no backend, no sync, no accounts.

## Stack (required)

| Concern | Choice |
|---------|--------|
| State | `flutter_bloc` + `freezed` events/states |
| Errors | `dartz` `Either<Failure, T>` / `Option` |
| DI | `injectable` + `get_it` (`lib/injection.dart`) |
| Routing | `auto_route` (`lib/presentation/core/route/`) |
| Persistence | `flutter_secure_storage` via infrastructure |
| Models | `freezed` immutable unions |

Do not introduce alternative state managers (Provider/Riverpod/GetX) or a second DI container.

## Layer map

```
lib/
  domain/           # Pure Dart. No Flutter, no packages that touch I/O.
  application/      # BLoCs. Depend only on domain interfaces.
  infrastructure/   # Implements domain repos. Secure storage, platform APIs.
  presentation/     # UI, theme, routes, widgets. Talks to BLoCs only.
  main.dart
  initialization.dart
  injection.dart
```

Dependency rule (strict):

```
presentation → application → domain ← infrastructure
```

- `domain` never imports `application`, `infrastructure`, or `presentation`.
- `application` never imports `infrastructure` or `presentation` (only `IKeysRepository` etc.).
- `presentation` never calls `KeysService` / `FlutterSecureStorage` directly.
- `infrastructure` may use Flutter/platform plugins; keep thin and map to domain types.

## Domain rules

- Entities: freezed models (e.g. `ApplicationModel`). Prefer domain names over storage jargon.
- Failures: freezed unions under `domain/errors/` (e.g. `StorageFailure`).
- Repositories: abstract `I*` interfaces returning `Future<Either<Failure, T>>`.
- No `encrypt*` naming unless real encryption is added. Prefer `save` / `write` / `upsert` for storage writes.

Storage keys that are not user passwords (e.g. onboard flag) must be filtered out of password lists in the repository/service layer — never show meta keys in Home UI.

## Application (BLoC) rules

One concern per BLoC. Current map:

| BLoC | Responsibility |
|------|----------------|
| `HomeBloc` | Load password list |
| `HomeActionBloc` | Create / save new entry |
| `PassActionBloc` | Update / delete entry |
| `OnboardBloc` | First-run flag check/set |
| `LockBloc` | PIN status / verify / set / update / remove |

Patterns:

- Events/states: freezed `part` files; register with `@injectable` / `@Injectable()`.
- Emit loading → call repository → `fold` into success/failure states.
- Put validation in the BLoC (empty fields, etc.) before hitting the repository.
- Map each operation to its own state field (`updateFailureOrSuccess` ≠ `deleteFailureOrSuccess`).
- Prefer `none()` / clear Option fields after a UI listener consumes a one-shot result when extending state.

After codegen changes: run `dart run build_runner build --delete-conflicting-outputs`.

## Infrastructure rules

- `KeysService`: low-level secure storage I/O.
- `KeysRepository`: implements `IKeysRepository`, delegates to service, no UI logic.
- Android: keep `encryptedSharedPreferences: true`.
- Boolean / flag reads and writes must use the **same** literal (e.g. both `'true'` — never mismatch like `true` vs `truee`).
- Duplicate-key checks: Left = failure (`keyAlreadyUsed`), Right = success. Do not invert Either meaning.
- Update = delete old key + write new key atomically in one method; return dedicated Either for update.

## Presentation rules

```
presentation/
  core/           # theme, route, shared widgets
  splash/
  onboard/
  home/           # screens + local widgets/
```

- Provide BLoCs via `BlocProvider` / `MultiBlocProvider` + `getIt<T>()`.
- Side effects (snackbar, navigation, dialog close) in `BlocListener` / `MultiBlocListener`, not in `builder`.
- Navigate with **auto_route only** (`AutoRouter`, `context.router`, generated routes). Do not mix `Navigator.push(MaterialPageRoute)` with AutoRoute for the same flow.
- Shared look: yellow surface, black border, offset shadow — reuse `MyCustomContainer` / `MySmallButton` / theme; avoid new one-off card systems unless product direction changes.
- Forms for create/edit: `showFormDialog` (or a dedicated shared form widget). Keep generator config out of random widgets when extracting (single config place).

Screens today: Splash → Onboard | Lock | Home → PassDetail / Profile.

## Bootstrap

- `main()` must `WidgetsFlutterBinding.ensureInitialized()` then `await InitializeApp.initialize()` before `runApp`.
- DI: only through `configureDependencies()` / generated `injection.config.dart`.
- Assets: declare paths in `pubspec.yaml` before using; font license paths must match real asset paths.

## Product constraints (keep unless user asks otherwise)

- Offline-first password vault for app-name → password pairs.
- No cloud sync, no accounts, no remote API in the default architecture.
- Future lock features (master password / biometrics) belong in domain + application; UI only reacts to lock state. Prefer `local_auth` for biometrics when enabled.
- Release readiness: application id is `com.passvera.app`; do not ship debug signing.

## How to add a feature

1. Domain: model / failure / interface method if needed.
2. Infrastructure: implement interface; keep Either semantics consistent.
3. Application: new BLoC or extend the matching existing BLoC; freezed event/state.
4. Presentation: screen/widgets; wire providers + listeners; auto_route if new page.
5. Regenerate: injectable / freezed / auto_route via build_runner.
6. Tests: bloc unit tests and/or widget tests for the new path (do not leave counter template tests).

## Anti-patterns (do not)

- Business logic or storage calls inside widgets.
- Presentation importing `infrastructure/`.
- Silent Either inversion (Left/Right meaning flips between methods).
- Writing update results into delete state fields (or vice versa).
- Hardcoding secrets or adding network clients without an explicit product decision.
- Drive-by refactors outside the requested feature.

## Checklist before finishing a change

- [ ] Dependencies point inward (domain untouched by Flutter I/O)
- [ ] Failures are domain unions, not raw exceptions in UI
- [ ] BLoC owns the use-case; UI only dispatches and listens
- [ ] Navigation uses auto_route consistently
- [ ] Meta storage keys excluded from password lists
- [ ] Flag write/read values match
- [ ] build_runner run if freezed/injectable/routes changed
