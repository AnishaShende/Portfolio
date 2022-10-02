import 'package:introduction_screen/introduction_screen.dart';
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  List<String> links = [
    'https://github.com/AnishaShende',
    'https://github.com/AnishaShende/Python-Programming/blob/main/Alexa.py',
    'https://github.com/AnishaShende/Python-Programming/blob/main/AudioBook.py',
    'https://github.com/AnishaShende/Python-Programming/blob/main/WhatsAppAutomation.py',
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

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: NeumorphicColors.background,
      imagePadding: EdgeInsets.zero,
    );
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lato'),
      home: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: NeumorphicColors.background,
        globalHeader: Align(
          alignment: Alignment.topRight,
          child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(top: 16, right: 16),
                child: Container(
                  color: NeumorphicColors.background,
                )
                ),
          ),
        ),
        globalFooter: Container(
          width: double.infinity.w,
          height: 100.h,
          color: const Color(0xfFF5b19a),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xfFF5b19a),
            ),
            child: Text(
              'Visit my Github profile',
              style: TextStyle(fontSize: 30.0.sp, fontFamily: 'Lato', fontWeight: FontWeight.bold),
            ),
            onPressed: () =>
                _launchURLApp(url: links[0]), //_onIntroEnd(context),
          ),
        ),
        pages: [
          PageViewModel(
            title: "Alexa using Python",
            body:
                "Alexa is a virtual assistant, an application that users can interact with using voice commands.",
            image: _buildImage('alexa.png'),
            footer: ElevatedButton(
              onPressed: () {
                _launchURLApp(url: links[1]);
                introKey.currentState?.animateScroll(0);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xfFF5b19a),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
              ),
              child: const Text(
                'View Project',
                style: TextStyle(color: Colors.white, fontFamily: 'Lato',),
              ),
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Pdf to Audio book converter using Python",
            body:
                "It is an audiobook maker, which converts an ebook pdf to audiobooks and reads it for the user.",
            image: _buildImage('audio_book.png'),
            footer: ElevatedButton(
              onPressed: () {
                _launchURLApp(url: links[2]);
                introKey.currentState?.animateScroll(0);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xfFF5b19a),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
              ),
              child: const Text(
                'View Project',
                style: TextStyle(color: Colors.white,fontFamily: 'Lato',),
              ),
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Portfolio Application",
            body:
                "It provides information about me and showcases my work with relevant skills and experience",
            image: _buildImage('my_app.png'),
            footer: ElevatedButton(
              onPressed: () {
                _launchURLApp(url: links[3]);
                introKey.currentState?.animateScroll(0);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xfFF5b19a),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
              ),
              child: const Text(
                'View Project',
                style: TextStyle(color: Colors.white, fontFamily: 'Lato',),
              ),
            ),
            decoration: pageDecoration,
          ),
          
        ],
        onDone: () => PageViewModel().body,
        // onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        skipOrBackFlex: 0,
        showSkipButton: false,
        nextFlex: 0,
        showBackButton: true,
        showDoneButton: false,
        //rtl: true, // Display as right-to-left
        back: const Icon(
          Icons.arrow_back,
          color: Color(0xfFF5b19a),
        ),
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Icon(
          Icons.arrow_forward,
          color: Color(0xfFF5b19a),
        ),
        // done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        // controlsPadding: kIsWeb
        //     ? const EdgeInsets.all(12.0)
        //     : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: DotsDecorator(
          size: const Size(10.0, 10.0),
          color: const Color(0xFFBDBDBD),
          activeColor: const Color(0xfFF5b19a),
          activeSize: const Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
          ),
        ),
        dotsContainerDecorator: ShapeDecoration(
          color: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          ),
        ),
      ),
    );
  }
}
