import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProgrammingLang extends StatefulWidget {
  const ProgrammingLang({Key? key}) : super(key: key);

  @override
  State<ProgrammingLang> createState() => _ProgrammingLangState();
}

class _ProgrammingLangState extends State<ProgrammingLang> {
  late List<ProLang> _langData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _langData = getLangData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lato'),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: NeumorphicColors.background,
            title: Text(
              'Programming languages:',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato',
                  color: Colors.grey.shade800),
            ),
          ),
          backgroundColor: NeumorphicColors.background,
          body: SfCircularChart(
            tooltipBehavior: _tooltipBehavior,
            series: <CircularSeries>[
              RadialBarSeries<ProLang, String>(
                dataSource: _langData,
                xValueMapper: (ProLang data, _) => data.language,
                yValueMapper: (ProLang data, _) => data.progress,
                enableTooltip: true,
                maximumValue: 100,
                cornerStyle: CornerStyle.endCurve,
                gap: '5%',
                innerRadius: '20%',
              )
            ],
            legend: Legend(
                isVisible: true,
                overflowMode: LegendItemOverflowMode.wrap,
                height: '50%',
                width: '80%',
                padding: 10,
                position: LegendPosition.bottom,
                iconHeight: 40,
                iconWidth: 40,
                itemPadding: 30,
                iconBorderWidth: 8,
                textStyle: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 15,
                    fontFamily: 'lato',
                    fontWeight: FontWeight.w400),
                alignment: ChartAlignment.center),
          ),
        ),
      ),
    );
  }

  List<ProLang> getLangData() {
    final List<ProLang> langData = [
      ProLang('Python', 45),
      ProLang('Javascript', 40),
      ProLang('Dart', 55),
      ProLang('Java', 50),
      ProLang('SQL', 60),
      ProLang('C/C++', 80),
      ProLang('CSS', 85),
      ProLang('HTML', 95),
    ];
    return langData;
  }
}

class ProLang {
  ProLang(this.language, this.progress);
  final String language;
  final int progress;
}
