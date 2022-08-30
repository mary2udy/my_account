import 'package:flutter/material.dart';
import 'package:my_account/pages/introduction_page.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);


  static String id = 'profile_ui';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 270.0,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),),
                  color: Colors.blue[600],
                ),
              ),
              const Positioned(
                bottom: -60,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: CircleAvatar(
                    radius: 65.0,
                    backgroundImage: AssetImage('images/img.jpg'),
                  ),
                ),),
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
          Column(
            children: const [
              Text('George Mary Uduma',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('Flutter App Developer',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              Text('Gmail: marygeorgeuduma@gmail.com',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              Text('Phone: +234 811 358 4186',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 180,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, IntroductionPage.id);
                  },
                  child: const Text('introduction>>',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}