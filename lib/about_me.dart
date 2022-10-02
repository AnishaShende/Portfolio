import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:im_animations/im_animations.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {

    return NeumorphicApp(
      color: NeumorphicColors.background,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              CustomPaint(
                painter: HeaderCurvedContainer(),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width.w,
                  height: MediaQuery.of(context).size.height.h,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 70),
                    child: WidgetCircularAnimator(
                      size: 120,
                      innerIconsSize: 3,
                      outerIconsSize: 3,
                      innerAnimation: Curves.easeInOutBack,
                      outerAnimation: Curves.easeInOutBack,
                      innerColor: const Color(0xfFf8dce1),
                      outerColor: const Color(0xfFfdd4ce),
                      innerAnimationSeconds: 10,
                      outerAnimationSeconds: 10,
                      child: CircleAvatar(
                        backgroundColor: NeumorphicColors.background,
                        radius: 120.r,
                        child: CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/images/weird_2.png'),
                          radius: 115.r,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 30),
                      child: Container(
                        height: 850.h,
                        width: double.infinity.w,
                        color: Colors.white54,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Text(
                                'Hey there, I am Anisha Shende, a student at the Government polytechnic in Nagpur, Maharashtra. I am a dedicated student working towards the future where I can create an artificially intelligent robot to solve the world\'s leading problems. Nobody is born a professional in their industry everyone who wants to be exceptional at something has to work hard at it, both through practical work experience and education. I\'m fueled by a passion for understanding the nuances of AI and human intelligence. I consider myself a \'forever student,\' eager to both build an academic foundation and stay in tune with the latest technological strategies through continued coursework.',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: double.infinity.w,
                      height: 100.h,
                      color: const Color(0xfFF5b19a),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Made with ",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 30.0.sp,
                              ),
                            ),
                            HeartBeat(
                                child: Icon(
                              Icons.favorite,
                              color: Colors.redAccent.shade400,
                              size: 35.sp,
                            )),
                            Text(
                              " by ",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 30.0.sp,
                              ),
                            ),
                            Text(
                              " Anisha Shende",
                              style: TextStyle(
                                  color: Colors.redAccent.shade400,
                                  fontSize: 30.0.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xfFF5b19a);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
