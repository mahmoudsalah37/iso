import 'package:flutter_web/material.dart';
import 'package:iso/packages/font_size/auto_size_text.dart';
import 'package:iso/packages/provider/src/provider.dart';
import '../../../../../view_page.dart';
import 'package:iso/models/page_model.dart';

class Dashboard extends StatefulWidget {
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool show = false;
  Color color = Colors.white;
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
                      child: Image.asset('icons/dashboard.png')),
                ),
                Expanded(
                  child: AutoSizeText(
                    'Dashboard',
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
                    style: TextStyle(color: color),
                    textAlign: TextAlign.left,
                  ),
                ),
                onHover: (bool onHover) {
                  if (onHover) {
                    color = Colors.blueAccent;
                  } else {
                    color = Colors.white;
                  }
                  setState(() {});
                },
                onTap: () {
                  page.setViewPage(ViewPage(1, 0));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
