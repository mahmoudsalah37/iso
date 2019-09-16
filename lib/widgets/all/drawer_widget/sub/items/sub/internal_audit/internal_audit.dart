import 'package:flutter_web/material.dart';
import 'package:iso/models/page_model.dart';
import 'package:iso/packages/font_size/auto_size_text.dart';
import 'package:iso/packages/provider/src/provider.dart';
import 'package:iso/styles/drawer_widget/items/style_item.dart';

import '../../../../../view_page.dart';

class InternalAudit extends StatefulWidget {
  _InternalAuditState createState() => _InternalAuditState();
}

class _InternalAuditState extends State<InternalAudit> {
  bool show = false,
      isHover0 = false,
      isHover1 = false,
      isHover2 = false,
      isHover3 = false;
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
                      child: Image.asset('icons/view.png')),
                ),
                Expanded(
                  child: AutoSizeText(
                    'Internal audit',
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
        //Dashboard
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
                  page.setViewPage(ViewPage(12, 0));
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Auditors List',
                    style: TextStyle(color: isHoverItem(isHover1)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover1 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(12, 1));
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Audit Plan',
                    style: TextStyle(color: isHoverItem(isHover2)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover2 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(12, 2));
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Audit Report',
                    style: TextStyle(color: isHoverItem(isHover3)),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  isHover3 = onHover;
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(12, 3));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
