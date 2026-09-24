import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:passvera/application/onboardBloc/onboard_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.dart';
import 'package:passvera/presentation/core/theme/colors.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';
import 'package:passvera/presentation/onboard/onboard_view_body.dart';

@RoutePage()
class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  OnboardViewState createState() => OnboardViewState();
}

class OnboardViewState extends State<OnboardView> {
  final PageController _pageController = PageController(initialPage: 0);
  static const _pages = [
    (
      icon: Icons.lock_outline_rounded,
      title: 'Your vault, offline',
      description: 'Passwords stay on this device in secure storage. '
          'No account, no cloud.',
    ),
    (
      icon: Icons.qr_code_scanner_rounded,
      title: 'Codes built in',
      description: 'Scan a QR code to keep your two-factor codes '
          'right next to your passwords.',
    ),
    (
      icon: Icons.pin_outlined,
      title: 'Locked when you leave',
      description: 'Set a PIN in Profile and Passvera relocks every time '
          'the app goes to the background.',
    ),
  ];
  int currentPage = 0;

  bool get _isLastPage => currentPage == _pages.length - 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final page = _pages[index];
                return OnboardViewBody(
                  icon: page.icon,
                  title: page.title,
                  description: page.description,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(),
              buildIndicator(),
              buildButton(),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget buildButton() {
    return MySmallButton(
      icon: Icon(_isLastPage ? Icons.start_outlined : Icons.skip_next_outlined),
      onTap: () {
        if (_isLastPage) {
          getIt<OnboardBloc>().add(const OnboardEvent.setOnboard());
          AutoRouter.of(context).pushAndPopUntil(const HomeRoute(),
              predicate: (_) {
            return false;
          });
        } else {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _pages.length,
        (index) => buildIndicatorDot(index),
      ),
    );
  }

  Widget buildIndicatorDot(int index) {
    final isSelected = index == currentPage;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 14,
      width: isSelected ? 32 : 14,
      decoration: BoxDecoration(
        color: isSelected ? MyColors.brand : MyColors.surfaceWhite,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: MyColors.ink, width: 2),
      ),
    );
  }
}
