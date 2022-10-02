import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lottie/lottie.dart';
import 'package:tap_to_expand/tap_to_expand.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechStack extends StatefulWidget {
  const TechStack({Key? key}) : super(key: key);

  @override
  State<TechStack> createState() => _TechStackState();
}

class _TechStackState extends State<TechStack> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: NeumorphicColors.background,
          body: Column(
            children: [
              Container(
                height: 550.h,
                width: 550.w,
                padding: const EdgeInsets.all(8),
              alignment: Alignment.topCenter,
              child: Lottie.network("https://assets4.lottiefiles.com/packages/lf20_cvhem09n.json"),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children:[
                    SizedBox(
                      height: 30.h,
                    ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TapToExpand(
                    color: const Color(0xfFF5b19a),
                    content: Row(
                      children: <Widget>[
                          Text(
                            "Java,",
                            style: TextStyle(color: Colors.white,fontFamily: 'Nunito', fontSize: 30.sp),
                          ),
                          SizedBox(width: 10.w,),
                          Text(
                            "PHP",
                            style: TextStyle(color: Colors.white, fontFamily: 'Nunito', fontSize: 30.sp),
                          ),
                      ],
                    ),
                    title: Text(
                      'Backend:',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        color: Colors.indigo.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp,
                      ),
                    ),
                    onTapPadding: 5,
                    closedHeight: 150.sp,
                    scrollable: true,
                    borderRadius: 10.r,
                    openedHeight: 250.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TapToExpand(
                    color: const Color(0xfFF5b19a),
                    content: Row(
                      children: <Widget>[
                          Text(
                            "Android,",
                            style: TextStyle(color: Colors.white,fontFamily: 'Nunito', fontSize: 30.sp),
                          ),SizedBox(width: 10.w,),
                          Text(
                            "Flutter,",
                            style: TextStyle(color: Colors.white,fontFamily: 'Nunito', fontSize: 30.sp),
                          ),SizedBox(width: 10.w,),
                          Text(
                            "Java",
                            style: TextStyle(color: Colors.white,fontFamily: 'Nunito', fontSize: 30.sp),
                          ),
                      ],
                    ),
                    title: Text(
                      'Mobile:',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        color: Colors.indigo.shade900,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTapPadding: 5,
                    closedHeight: 150.sp,
                    scrollable: true,
                    borderRadius: 10.r,
                    openedHeight: 250.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TapToExpand(
                    color: const Color(0xfFF5b19a),
                    content: Row(
                      children: <Widget>[
                          Text(
                            "Google Cloud",
                            style: TextStyle(color: Colors.white,fontFamily: 'Nunito', fontSize: 30.sp),
                          ),
                      ],
                    ),
                    title: Text(
                      'Infrastructure:',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        color: Colors.indigo.shade900,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTapPadding: 5,
                    closedHeight: 150.sp,
                    scrollable: true,
                    borderRadius: 10.r,
                    openedHeight: 250.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TapToExpand(
                    color: const Color(0xfFF5b19a),
                    content: Row(
                      children: <Widget>[
                          Text(
                            "Python",
                            style: TextStyle(color: Colors.white,fontFamily: 'Nunito', fontSize: 30.sp),
                          ),
                      ],
                    ),
                    title: Text(
                      'Data Science:',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        color: Colors.indigo.shade900,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTapPadding: 5,
                    closedHeight: 150.sp,
                    scrollable: true,
                    borderRadius: 10.r,
                    openedHeight: 250.sp,
                  ),
                 ),
                ],
               ),
              ),
             ),
           ],
          ),
        ),
      ),
    );
  }
}