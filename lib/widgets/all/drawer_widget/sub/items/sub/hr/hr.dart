import 'package:flutter_web/material.dart';
import 'package:iso/models/page_model.dart';
import 'package:iso/packages/font_size/auto_size_text.dart';
import 'package:iso/packages/provider/provider.dart';
import 'package:iso/styles/drawer_widget/items/style_item.dart';

import '../../../../../view_page.dart';

class HR extends StatefulWidget {
  _HRState createState() => _HRState();
}

class _HRState extends State<HR> {
  bool show = false,
      isHover0 = false,
      isHover1 = false,
      isHover2 = false,
      isHover3 = false,
      isHover4 = false,
      isHover5 = false;
  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageModel>(context);

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
                      child: Image.asset('icons/hr.png')),
                ),
                Expanded(
                  child: AutoSizeText(
                    'HR',
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
              setState(() {
                show = !show;
              });
            },
          ),
        ),
        //sub
        Visibility(
          visible: show,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(color: isHoverItem(isHover0)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover0 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(4, 0));
                },
              ),
              //Job Description
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Job Description',
                    style: TextStyle(color: isHoverItem(isHover1)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover1 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(4, 1));
                },
              ),
              //Training Plan
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Training Plan',
                    style: TextStyle(color: isHoverItem(isHover2)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover2 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(4, 2));
                },
              ),
              //Competence Evaluation
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Competence Evaluation',
                    style: TextStyle(color: isHoverItem(isHover3)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover3 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(4, 3));
                },
              ),
              //Training Attendance and Evaluation
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Training Attendance and Evaluation',
                    style: TextStyle(color: isHoverItem(isHover4)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover4 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(4, 4));
                },
              ),
              //Employees Database
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Employees Database',
                    style: TextStyle(color: isHoverItem(isHover5)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover5 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(4, 5));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
