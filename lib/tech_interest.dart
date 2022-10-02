import 'package:lottie/lottie.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechIntrest extends StatefulWidget {
  const TechIntrest({Key? key}) : super(key: key);

  @override
  State<TechIntrest> createState() => _TechIntrestState();
}

class _TechIntrestState extends State<TechIntrest> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      color: NeumorphicColors.background,
      home: SafeArea(
        child: Scaffold(
          body: Column(children: [
            Container(
              height: 600.h,
              width: 600.h,
              color: NeumorphicColors.background,
              padding: const EdgeInsets.all(30),
              alignment: Alignment.topCenter,
              child: Lottie.network(
                  "https://assets8.lottiefiles.com/packages/lf20_lfv8xg2j.json"),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 50),
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
                              'Artificial Intelligence',
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
                              'Robotics',
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
                              'Blockchain',
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
                              'Metaverse',
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
