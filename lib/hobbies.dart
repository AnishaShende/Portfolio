import 'package:lottie/lottie.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  State<Hobbies> createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      color: NeumorphicColors.background,
      home: SafeArea(
        child: Scaffold(
          body: Column(children: [
            Container(
              height: 700.h,
              width: 700.h,
              color: NeumorphicColors.background,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topCenter,
              child: Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_nbsd2ik0.json"),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10),
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(8),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                                color: const Color(0xfFF5b19a),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Center(
                                child: Text(
                              'Reading books',
                              style: TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontSize: 30.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                                color: const Color(0xfFF5b19a),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Center(
                                child: Text(
                              'Coding',
                              style: TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontSize: 30.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                                color: const Color(0xfFF5b19a),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Center(
                                child: Text(
                              'Music',
                              style: TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontSize: 30.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                                color: const Color(0xfFF5b19a),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Center(
                                child: Text(
                              'Travel',
                              style: TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontSize: 30.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                                color: const Color(0xfFF5b19a),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Center(
                                child: Text(
                              'Gaming',
                              style: TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontSize: 30.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                                color: const Color(0xfFF5b19a),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Center(
                                child: Text(
                              'Mindfulness',
                              style: TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontSize: 30.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.h,
                            decoration: BoxDecoration(
                                color: const Color(0xfFF5b19a),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Center(
                                child: Text(
                              'Chess & Criket',
                              style: TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontSize: 30.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
