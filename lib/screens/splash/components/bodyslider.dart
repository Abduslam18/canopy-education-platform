import 'package:canopy_edu/screens/are_you/are_you_screen.dart';
import 'package:flutter/material.dart';
import 'package:canopy_edu/screens/splash/components/slider.dart';

import '../../../app_localization.dart';
import '../../../components/default_button.dart';

class Landing extends StatefulWidget {
  static String routeName = "/landing";

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        description:
            "Welcome to canopy education App for omar al-mukhtar university start learning now",
        image: "assets/images/splash_1.svg"),
    SliderPage(
        description:
            "Learn better with managing your subjects, completing homework and much more",
        image: "assets/images/splash_2.svg"),
    SliderPage(
        description:
            "Keep track of your academic level and grades for each subject",
        image: "assets/images/splash_4.svg"),
    SliderPage(
        description:
            "Follow the latest university news and communicate with your teachers and friends",
        image: "assets/images/splash_3.svg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Color(0xFF5222CF)
                                : Colors.grey.withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 55,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 55,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(45)),
                  child: (_currentPage == (_pages.length - 1))
                      ? DefaultButton(
                          text: AppLocalization.of(context)
                              ?.translate('Continue'),
                          press: () {
                            Navigator.pushNamed(
                                context, Are_you_screen.routeName);
                          },
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 45,
                          color: Colors.white,
                        ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}
