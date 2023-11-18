import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:passvera/application/onboardBloc/onboard_bloc.dart';
import 'package:passvera/injection.dart';
import 'package:passvera/presentation/core/route/route.gr.dart';
import 'package:passvera/presentation/core/widgets/my_small_button.dart';
import 'package:passvera/presentation/onboard/onboard_view_body.dart';

class OnboardView extends StatefulWidget {
  @override
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<String> titles = ["Title 1", "Title 2", "Title 3"];
  final List<String> descriptions = [
    "Description 1",
    "Description 2",
    "Description 3"
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: titles.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardViewBody(
                  title: titles[index],
                  description: descriptions[index],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(),
              buildIndicator(),
              buildButton(),
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget buildButton() {
    return MySmallButton(
      icon: Icon(Icons.skip_next_outlined),
      buttonText: currentPage == 2 ? 'Lets Start' : 'Next',
      onTap: () {
        if (currentPage == 2) {
          getIt<OnboardBloc>()..add(OnboardEvent.setOnboard());
          AutoRouter.of(context).pushAndPopUntil(HomeView(), predicate: (_) {
            return false;
          });
        } else {
          _pageController.nextPage(
            duration: Duration(milliseconds: 300),
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
        titles.length,
        (index) => buildIndicatorDot(index),
      ),
    );
  }

  Widget buildIndicatorDot(int index) {
    bool isSelected = index == currentPage;
    double size = isSelected ? 25.0 : 15.0;

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: isSelected ? BoxShape.circle : BoxShape.rectangle,
        color: isSelected ? Colors.yellow : Colors.grey[800],
      ),
    );
  }
}
