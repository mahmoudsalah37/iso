import 'package:flutter_web/material.dart';
import 'package:iso/packages/font_size/auto_size_text.dart';
import '../../../../../../../styles/drawer_widget/items/style_item.dart';

class DocumentedInforamation extends StatefulWidget {
  _DocumentedInforamationState createState() => _DocumentedInforamationState();
}

class _DocumentedInforamationState extends State<DocumentedInforamation> {
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
                      child: Image.asset('icons/document.png')),
                ),
                Expanded(
                  child: AutoSizeText(
                    'Document Informantion',
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
              //Dashboard
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
              //Documented Information
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Documented Information',
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
