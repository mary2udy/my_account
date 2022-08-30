import 'package:flutter/material.dart';
import 'package:my_account/profile_ui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  static String id = 'introduction_page';

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {

  final controller = PageController();
  bool isLastPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, ProfileUI.id);
          },
          icon: const Icon(Icons.keyboard_arrow_left,
            size: 35.0,
            color: Colors.white,
          ),),
      ),
      body: Column(
          children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(bottom: 150),
                    child:   PageView(
                          scrollDirection: Axis.horizontal,
                          controller: controller,
                          onPageChanged: (index) {
                            setState(() => isLastPage = index==3);
                          },
                          children: [
                            buildPage(
                                urlImage: 'images/img.png',
                                title:'Introduction 1',
                                subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.'),
                            buildPage(
                                urlImage: 'images/img_4.png',
                                title: 'Introduction 2',
                                subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.'),
                            buildPage(urlImage: 'images/img_2.png',
                                title: 'Introduction 3',
                                subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.'),
                            buildPage(urlImage: 'images/img_3.png',
                                title: 'Introduction 4',
                                subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.'),
                          ],
                        ),
                    ),
                ),
            ],
        ),
      bottomSheet:
      isLastPage
          ? Container(
        padding: EdgeInsets.only(left: 60,bottom: 100),
            child: SizedBox(
        height: 51,
        width: 250,
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue[600],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {},
            child: Text('Get Started',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),),
      ),
          ):
       Container(
        height: 130,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: ScaleEffect(
                    spacing: 8,
                    dotColor: Colors.black12,
                    strokeWidth: 30,
                    dotHeight: 8,
                    dotWidth: 8,
                    radius: 20,
                    scale: 1.6,
                    activeDotColor: Colors.blue.shade600,
                  ),
                  onDotClicked: (index) => controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                TextButton(
                onPressed: () {
      controller.jumpToPage(4);
      },
            child: const Text('Skip',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),),
                  SizedBox(
                    width: 110,
                    height: 51,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor: Colors.blue[600]
                      ),
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 1),
                            curve: Curves.easeIn);
                      },
                      child: const Text('Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),),
                  ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildPage({
required String urlImage,
required String title,
required String subtitle,
}) =>

   Stack(
     children: [
     Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset(urlImage,),
       const SizedBox(
         height: 15,
       ),
       Positioned(
         height: 30,
         width: 128,
         left: 121,
         top: 458,
         child: Text(
           title,
           style: const TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontWeight: FontWeight.w600
           ),
         ),
       ),
       const SizedBox(
         height: 10,
       ),
       Positioned(
         width: 349 ,
         height: 74,
         left: 21,
         top: 505,
         child: Text(
           subtitle,
           textAlign: TextAlign.center,
           style: const TextStyle(
               color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w400
           ),
         ),
       ),
     ],
   ),
     ],
   );


