import 'package:anisha_intro/home.dart';
import 'package:anisha_intro/professional.dart';
import 'package:anisha_intro/personal.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:anisha_intro/home.dart';
// 720 x 1520 pixels

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) => const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashPage(),
          )),
      designSize: const Size(720, 1520),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/images/launch_image.png'),
      title: const Text(
        "Portfolio",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text("Loading..."),
      navigator: const HomePage(),
      durationInSeconds: 4,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void changeTab() {
    if (mounted) {
      setState(() {});
    }
  }

  var selectedIndex = 0;
  final _page = [
    const HomeScreen(),
    const ProfessionalScreen(),
    const PersonalScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WillPopScope(
        onWillPop: () => _onBackButtonPressed(context),
        child: Scaffold(
          backgroundColor: NeumorphicColors.background.withOpacity(0.7),
          body: _page[selectedIndex],
          bottomNavigationBar: CurvedNavigationBar(
              index: selectedIndex,
              onTap: (int index) {
                selectedIndex = index;
                setState(() {
                  selectedIndex = index;
                });
              },
              backgroundColor: NeumorphicColors.background,
              color: const Color(0xfFF5b19a),
              animationDuration: const Duration(milliseconds: 300),
              letIndexChange: (index) => true,
              items: const [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Icon(Icons.laptop, color: Colors.white),
                Icon(Icons.favorite, color: Colors.white),
              ]),
        ),
      ),
    );
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Do you want to exit?",
              style: TextStyle(
                color: Color(0xfFF5b19a),
                fontFamily: 'Lato',
              ),
            ),
            content: Lottie.network(
                "https://assets5.lottiefiles.com/packages/lf20_udbjn8rj.json"),
            elevation: 24,
            backgroundColor: NeumorphicColors.background,
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text(
                  "Yes",
                  style: TextStyle(
                      color: Color(0xfFF5b19a),
                      fontFamily: 'Lato',
                      fontSize: 15),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text(
                  "No",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato',
                      color: Color(0xfFF5b19a),
                      fontSize: 15),
                ),
              ),
            ],
          );
        });
    return exitApp;
  }
}
