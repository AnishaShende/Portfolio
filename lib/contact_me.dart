import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  bool isPressed = false;
  bool isPressed0 = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;
  bool isPressed6 = false;
  // late String link;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height.h;
    final double width = MediaQuery.of(context).size.width.w;
    const phoneNumber = '+919420853261';
    const email = 'anishashende369@gmail.com';

    Offset distance = isPressed ? const Offset(-10, -10) : const Offset(-10, -10);
    double blur = isPressed ? 30.0 : 5.0;

    List<String> links = [
      'https://www.linkedin.com/in/anisha-shende-9667851b9',
      'https://github.com/AnishaShende',
      'https://twitter.com/Anisha_Shende',
      'https://www.cloudskillsboost.google/public_profiles/849dbab6-e148-4c64-886e-2a162464b13f',
      'https://g.dev/AnishaShende',
      'https://www.hackerrank.com/anishashende369?hr_r=1',
      'tel:$phoneNumber',
      'mailto:$email',
    ];

    Future _launchURLApp({
      required String url,
    }) async {
      var a = Uri.parse(url);

      if (await canLaunchUrl(a)) {
        await launchUrl(a);
      } else {
        throw 'Could not launch $url';
      }
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 300.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100.0.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xfFF5b19a).withOpacity(0.3),
                    offset: const Offset(-10.0, 0.0),
                    blurRadius: 20.0.r,
                    spreadRadius: 4.0.r,
                  ),
                ],
                color: const Color(0xfFF5b19a),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // top: 80,
                    top: 45,
                    left: 0,
                    child: Container(
                      height: 70.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50.0.r),
                          topRight: Radius.circular(50.0.r),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: 20,
                      child: Text(
                        'Let\'s Connect',
                        style: TextStyle(
                            fontSize: 35.sp,
                            color: const Color(0xfFF5b19a),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.08.h,
            ),
            Stack(
              children: [
                Positioned(
                  child: Material(
                    child: Container(
                      height: 220.h,
                      width: width * 5.5.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0.0.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            offset: const Offset(
                              -10.0,
                              10.0,
                            ),
                            blurRadius: 20.0.r,
                            spreadRadius: 4.0.r,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 30,
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0.r),
                    ),
                    child: Container(
                      height: 190.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0.r),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/weird_3.jpg"),
                            ),
                      ),
                      child: Image(image: const AssetImage('assets/images/Contact.jpg'), height: double.infinity.h, width: double.infinity.w,fit: BoxFit.cover,),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 150,
                  child: SizedBox(
                    height: 150.h,
                    width: 200.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anisha Shende',
                          style: TextStyle(
                              fontSize: 25.sp,
                              color: const Color(0xfFF5b19a),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.grey,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold),
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        Text(
                          'A Portfolio Application.',
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.grey,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 30,
                  child: Listener(
                    onPointerUp: (_) => setState(() => isPressed = false),
                    onPointerDown: (_) => setState(() => isPressed = true),
                    child: GestureDetector(
                      onTap: () {
                        _launchURLApp(url: links[6]);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        height: 55.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                            color: const Color(0xfFF5b19a),
                            borderRadius: BorderRadius.circular(50.0.r),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xfFF5b19a),
                                offset: const Offset(10, 10),
                                blurRadius: 10.0.r,
                                spreadRadius: 5.0.r,
                                inset: true,
                              )
                            ]),
                        child: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 30,
                  child: Listener(
                    onPointerUp: (_) => setState(() => isPressed0 = false),
                    onPointerDown: (_) => setState(() => isPressed0 = true),
                    child: GestureDetector(
                      onTap: () {
                        _launchURLApp(url: links[7]);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        height: 55.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                            color: const Color(0xfFF5b19a),
                            borderRadius: BorderRadius.circular(50.0.r),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xfFF5b19a),
                                offset: const Offset(10, 10),
                                blurRadius: 10.0.r,
                                spreadRadius: 5.0.r,
                                inset: true,
                              )
                            ]),
                        child: const Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 0, top: 20.0),
                      height: 250.h,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfFF5b19a),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80.0.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xfFF5b19a).withOpacity(0.4),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20.0.r,
                              spreadRadius: 4.0.r,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          top: 25.0,
                          bottom: 25.0,
                        ),

                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "LinkedIn",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 30,
                              child: Listener(
                                onPointerUp: (_) =>
                                    setState(() => isPressed1 = false),
                                onPointerDown: (_) =>
                                    setState(() => isPressed1 = true),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURLApp(url: links[0]);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 100),
                                    height: 65.h,
                                    width: 140.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15.0.r),
                                      color: const Color(0xfFF5b19a),
                                      boxShadow: isPressed1
                                          ? []
                                          : [
                                              BoxShadow(
                                                //bottom
                                                blurRadius: blur,
                                                offset: -distance,
                                                color: const Color.fromARGB(
                                                    255, 218, 167, 159),
                                                inset: isPressed1,
                                              ),
                                              BoxShadow(
                                                //top
                                                blurRadius: blur,
                                                offset: distance,
                                                color: const Color(0xffffdad4),
                                                inset: isPressed1,
                                              )
                                            ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Visit',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Nunito',
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), ///////
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0, top: 0),
                      height: 250.h,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfFF5b19a),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80.0.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xfFF5b19a).withOpacity(0.3),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20.0.r,
                              spreadRadius: 4.0.r,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          top: 25.0,
                          bottom: 25.0,
                        ),

                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Github",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 30,
                              child: Listener(
                                onPointerUp: (_) =>
                                    setState(() => isPressed2 = false),
                                onPointerDown: (_) =>
                                    setState(() => isPressed2 = true),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURLApp(url: links[1]);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 100),
                                    height: 60.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15.0.r),
                                      color: const Color(0xfFF5b19a),
                                      boxShadow: isPressed2
                                          ? []
                                          : [
                                              BoxShadow(
                                                //bottom
                                                blurRadius: blur,
                                                offset: -distance,
                                                color: const Color.fromARGB(
                                                    255, 218, 167, 159),
                                                inset: isPressed2,
                                              ),
                                              BoxShadow(
                                                //top
                                                blurRadius: blur,
                                                offset: distance,
                                                color: const Color(0xffffdad4),
                                                inset: isPressed2,
                                              )
                                            ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Visit',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.sp,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), //
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0, top: 0),
                      height: 250.h,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfFF5b19a),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80.0.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xfFF5b19a).withOpacity(0.3),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20.0.r,
                              spreadRadius: 4.0.r,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          top: 25.0,
                          bottom: 25.0,
                        ),

                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Twitter",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 30,
                              child: Listener(
                                onPointerUp: (_) =>
                                    setState(() => isPressed3 = false),
                                onPointerDown: (_) =>
                                    setState(() => isPressed3 = true),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURLApp(url: links[2]);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 100),
                                    height: 60.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15.0.r),
                                      color: const Color(0xfFF5b19a),
                                      boxShadow: isPressed3
                                          ? []
                                          : [
                                              BoxShadow(
                                                //bottom
                                                blurRadius: blur,
                                                offset: -distance,
                                                color: const Color.fromARGB(
                                                    255, 218, 167, 159),
                                                inset: isPressed3,
                                              ),
                                              BoxShadow(
                                                //top
                                                blurRadius: blur,
                                                offset: distance,
                                                color: const Color(0xffffdad4),
                                                inset: isPressed3,
                                              )
                                            ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Visit',
                                      style: TextStyle(
                                          fontFamily: 'Nunito',
                                          color: Colors.white,
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), //
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0, top: 0),
                      height: 250.h,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80.0.r),
                          border: Border.all(color: const Color(0xfFF5b19a)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xfFF5b19a).withOpacity(0.4),
                              offset: const Offset(-10.0, 10.0),
                              blurRadius: 20.0.r,
                              spreadRadius: 4.0.r,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          top: 25.0,
                          bottom: 25.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Other Plateform links ",
                                style: TextStyle(
                                  color: const Color(0xfFF5b19a),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato',
                                  fontSize: 45.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0, top: 0),
                      height: 250.h,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfFF5b19a),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80.0.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xfFF5b19a).withOpacity(0.4),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20.0.r,
                              spreadRadius: 4.0.r,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          top: 25.0,
                          bottom: 25.0,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Google Cloud",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato',
                                    fontSize: 40.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 30,
                              child: Listener(
                                onPointerUp: (_) =>
                                    setState(() => isPressed4 = false),
                                onPointerDown: (_) =>
                                    setState(() => isPressed4 = true),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURLApp(url: links[3]);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 100),
                                    height: 60.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15.0.r),
                                      color: const Color(0xfFF5b19a),
                                      boxShadow: isPressed4
                                          ? []
                                          : [
                                              BoxShadow(
                                                //bottom
                                                blurRadius: blur,
                                                offset: -distance,
                                                color: const Color.fromARGB(
                                                    255, 218, 167, 159),
                                                inset: isPressed4,
                                              ),
                                              BoxShadow(
                                                //top
                                                blurRadius: blur,
                                                offset: distance,
                                                color: const Color(0xffffdad4),
                                                inset: isPressed4,
                                              )
                                            ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Visit',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Nunito',
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), //
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0, top: 0),
                      height: 250.h,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfFF5b19a),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80.0.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xfFF5b19a).withOpacity(0.4),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20.0.r,
                              spreadRadius: 4.0.r,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          top: 25.0,
                          bottom: 25.0,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  children: [
                                    Text(
                                      "Google Developer's \nProfile",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 30,
                              child: Listener(
                                onPointerUp: (_) =>
                                    setState(() => isPressed5 = false),
                                onPointerDown: (_) =>
                                    setState(() => isPressed5 = true),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURLApp(url: links[4]);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 100),
                                    height: 60.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15.0.r),
                                      color: const Color(0xfFF5b19a),
                                      boxShadow: isPressed5
                                          ? []
                                          : [
                                              BoxShadow(
                                                //bottom
                                                blurRadius: blur,
                                                offset: -distance,
                                                color: const Color.fromARGB(
                                                    255, 218, 167, 159),
                                                inset: isPressed5,
                                              ),
                                              BoxShadow(
                                                //top
                                                blurRadius: blur,
                                                offset: distance,
                                                color: const Color(0xffffdad4),
                                                inset: isPressed5,
                                              )
                                            ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Visit',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.sp,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), //
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0, top: 0),
                      height: 250.h,
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfFF5b19a),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80.0.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xfFF5b19a).withOpacity(0.4),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20.0.r,
                              spreadRadius: 4.0.r,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          top: 25.0,
                          bottom: 25.0,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HackerRank",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 30,
                              child: Listener(
                                onPointerUp: (_) =>
                                    setState(() => isPressed6 = false),
                                onPointerDown: (_) =>
                                    setState(() => isPressed6 = true),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURLApp(url: links[5]);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 100),
                                    height: 60.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15.0.r),
                                      color: const Color(0xfFF5b19a),
                                      boxShadow: isPressed6
                                          ? []
                                          : [
                                              BoxShadow(
                                                //bottom
                                                blurRadius: blur,
                                                offset: -distance,
                                                color: const Color.fromARGB(
                                                    255, 218, 167, 159),
                                                inset: isPressed6,
                                              ),
                                              BoxShadow(
                                                //top
                                                blurRadius: blur,
                                                offset: distance,
                                                color: const Color(0xffffdad4),
                                                inset: isPressed6,
                                              )
                                            ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Visit',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.sp,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ), //
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
