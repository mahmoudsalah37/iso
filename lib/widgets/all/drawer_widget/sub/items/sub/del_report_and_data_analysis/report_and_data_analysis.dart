import 'package:flutter_web/material.dart';
import 'package:iso/packages/font_size/auto_size_text.dart';
import '../../../../../../../styles/drawer_widget/items/style_item.dart';

class ReportAndAnalysis extends StatefulWidget {
  _ReportAndAnalysisState createState() => _ReportAndAnalysisState();
}

class _ReportAndAnalysisState extends State<ReportAndAnalysis> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: InkWell(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                      height: 20.0,
                      width: 20.0, // fixed width and height
                      child: Image.asset('icons/report.png')),
                ),
                Expanded(
                  child: AutoSizeText(
                    'Report & data analysis',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    minFontSize: 8.0,
                    maxFontSize: 25.0,
                  ),
                ),
                Text(
                  '>',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            onTap: () {
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
