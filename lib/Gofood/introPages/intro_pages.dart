import 'package:december/Gofood/introPages/colors_pages.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPages extends StatefulWidget {
  const IntroPages({super.key});

  @override
  State<IntroPages> createState() => _IntroPagesState();
}

int currentPage = 0;
PageController _controller = PageController();
int pageOne = 0;

class _IntroPagesState extends State<IntroPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              children: [
                ColorPage(color: Colors.red),
                ColorPage(color: Colors.green),
                ColorPage(color: Colors.blue),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    currentPage == 0
                        ? _controller.jumpToPage(2)
                        : _controller.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                  },
                  child: Text(
                    currentPage > 0 ? "Previous" : "Skip",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotWidth: 12,
                    dotHeight: 12,
                    spacing: 8,
                    activeDotColor: Colors.black,
                    dotColor: Colors.grey.shade400,
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (currentPage < 2) {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      // if(currentPage == 0) {
                      // _controller.jumpTo(1);
                      // }else if(currentPage == 1){
                      //   _controller.jumpTo(2);
                      // }
                    }
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
