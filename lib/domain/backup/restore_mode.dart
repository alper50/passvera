/// How a restored backup is applied to the vault.
enum RestoreMode {
  /// Keep existing entries; add backup entries that are not present.
  merge,

  /// Remove all existing entries first, then add the backup's.
  replace,
}
