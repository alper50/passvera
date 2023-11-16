import 'package:flutter/material.dart';
import 'package:passvera/presentation/onboard/onboard_view_body.dart';

class OnboardView extends StatefulWidget {
  @override
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<String> titles = ["Title 1", "Title 2", "Title 3"];
  final List<String> descriptions = ["Description 1", "Description 2", "Description 3"];
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
          SizedBox(height: 20),
          buildIndicator(),
          SizedBox(height: 20),
        ],
      ),
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == currentPage ? Colors.blue : Colors.grey,
      ),
    );
  }
}

