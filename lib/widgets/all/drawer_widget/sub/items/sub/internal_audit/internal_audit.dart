import 'package:flutter_web/material.dart';
import 'package:iso/packages/font_size/auto_size_text.dart';
import '../../../../../../../styles/drawer_widget/items/style_item.dart';

class InternalAudit extends StatefulWidget {
  _InternalAuditState createState() => _InternalAuditState();
}

class _InternalAuditState extends State<InternalAudit> {
  bool show = false;
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
                      child: Image.asset('icons/view.png')),
                ),
                Expanded(
                  child: AutoSizeText(
                    'Internal audit',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
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
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                   // ViewPage(0, 0);
                  });
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Master INternal Audit Plan',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                   // ViewPage(0, 0);
                  });
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Internal Audit Schedule',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                   // ViewPage(0, 0);
                  });
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Internal Audit Checklist Master',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                   // ViewPage(0, 0);
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
