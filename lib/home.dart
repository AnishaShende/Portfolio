import 'package:anisha_intro/about_me.dart';
import 'package:anisha_intro/contact_me.dart';
import 'package:anisha_intro/project.dart';
import 'package:anisha_intro/pro_lang.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isPressed = false;

    return NeumorphicApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset('assets/images/HomeProfile.jpg',
                  height: double.infinity.h,
                  width: double.infinity.w,
                  fit: BoxFit.cover),
              Positioned(
                top: 40,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Anisha Shende',
                      style: TextStyle(
                          fontSize: 60.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          color: Colors.grey.shade800),
                    ),
                    Text(
                      'Flutter Developer',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontFamily: 'Lato',
                          color: NeumorphicColors.background),
                    ),
                  ],
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.8,
                minChildSize: 0.4,
                maxChildSize: 0.8,
                builder: (BuildContext context, myScrollController) {
                  return ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50.r)),
                    child: Column(
                      children: [
                        Container(
                          height: 450.h,
                          color: Colors.transparent,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Stack(
                              children: [
                                Container(
                                  color: Colors.transparent,
                                ),
                                // ),
                                Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50.0.r),
                                        topRight: Radius.circular(50.0.r)),
                                    color: NeumorphicColors.background
                                        .withOpacity(.8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                                width: 20.0.w, height: 50.h),
                                            Text(
                                              'I am into ',
                                              style: TextStyle(
                                                fontFamily: 'Lato',
                                                  fontSize: 30.0.sp,
                                                  fontWeight:
                                                      FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 270.0,
                                              child: DefaultTextStyle(
                                                style: TextStyle(
                                                  fontSize: 30.0.sp,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Lato',
                                                ),
                                                child: AnimatedTextKit(
                                                  animatedTexts: [
                                                    TypewriterAnimatedText(
                                                      'Android Developement',
                                                      textStyle: const TextStyle(
                                                        color: Colors.redAccent,
                                                      ),
                                                      speed: const Duration(
                                                          milliseconds: 100),
                                                    ),
                                                    TypewriterAnimatedText(
                                                      'Machine Learning',
                                                      textStyle: const TextStyle(
                                                        color: Colors.green,
                                                      ),
                                                      speed: const Duration(
                                                          milliseconds: 100),
                                                    ),
                                                    TypewriterAnimatedText(
                                                      'Full stack Web-Developement',
                                                      textStyle: const TextStyle(
                                                        color: Colors.blueAccent,
                                                      ),
                                                      speed: const Duration(
                                                          milliseconds: 100),
                                                    ),
                                                  ],
                                                  totalRepeatCount: 20,
                                                  pause: const Duration(
                                                      milliseconds: 1000),
                                                  displayFullTextOnTap: true,
                                                  stopPauseOnTap: true,
                                                  onTap: () {
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 50.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 10,
                                              ),
                                              child: Text(
                                                "How can I help you?",
                                                style: TextStyle(
                                                    fontSize: 45.sp,
                                                    fontFamily: 'Lato',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: SizedBox(
                                                height: 80.h,
                                                width: 185.w,
                                                child: NeumorphicButton(
                                                  margin: const EdgeInsets.only(
                                                      right: 0),

                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pushReplacement(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) {
                                                      return const ContactMe();
                                                    }));
                                                    setState(() {
                                                      isPressed = !isPressed;
                                                    });
                                                  },
                                                  // }
                                                  style: NeumorphicStyle(
                                                    color: const Color(0xfFF5b19a),
                                                    boxShape:
                                                        NeumorphicBoxShape
                                                            .roundRect(
                                                                BorderRadius
                                                                    .circular(
                                                                        25.r)),
                                                    shape:
                                                        NeumorphicShape.flat,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Contact me",
                                                      style: TextStyle(
                                                          fontSize: 20.sp,
                                                          fontFamily: 'Lato',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .grey.shade800),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 40.h,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .pushReplacement(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) {
                                                      return const AboutMe();
                                                    }));
                                                  },
                                                  child: Container(
                                                      height: 300.h,
                                                      width: 250.w,
                                                      decoration:
                                                          BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    15.r),
                                                        color: Colors
                                                            .redAccent
                                                            .withOpacity(0.7),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          const Icon(
                                                            Icons.person,
                                                            size: 30,
                                                            color:
                                                                Colors.white,
                                                          ),
                                                          Text(
                                                            "About me",
                                                            style: TextStyle(
                                                              fontFamily: 'Lato',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .white,
                                                              fontSize: 20.sp,
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .pushReplacement(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) {
                                                      return const ProjectPage();
                                                    }));
                                                  },
                                                  child: Container(
                                                      height: 300.h,
                                                      width: 250.w,
                                                      decoration:
                                                          BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    15.r),
                                                        color: Colors.green
                                                            .withOpacity(0.7),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          const Icon(
                                                            Icons.laptop,
                                                            size: 30,
                                                            color:
                                                                Colors.white,
                                                          ),
                                                          Text(
                                                            "My Projects",
                                                            style: TextStyle(
                                                              fontFamily: 'Lato',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .white,
                                                              fontSize: 20.sp,
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .pushReplacement(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) {
                                                      return const ProgrammingLang();
                                                    }));
                                                  },
                                                  child: Container(
                                                      height: 300.h,
                                                      width: 250.w,
                                                      decoration:
                                                          BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    15.r),
                                                        color: Colors
                                                            .blueAccent
                                                            .withOpacity(0.7),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .military_tech,
                                                            size: 30,
                                                            color:
                                                                Colors.white,
                                                          ),
                                                          Text(
                                                            "My Skills",
                                                            style: TextStyle(
                                                              fontFamily: 'Lato',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .white,
                                                              fontSize: 20.sp,
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
