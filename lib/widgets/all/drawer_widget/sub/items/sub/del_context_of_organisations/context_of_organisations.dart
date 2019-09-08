import 'package:flutter_web/material.dart';
import 'package:iso/packages/font_size/auto_size_text.dart';

class ContextOfOrganisations extends StatefulWidget {
  _ContextOfOrganisationsState createState() => _ContextOfOrganisationsState();
}

class _ContextOfOrganisationsState extends State<ContextOfOrganisations> {
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
                      child: Image.asset('icons/paper.png')),
                ),
                Expanded(
                  child: AutoSizeText(
                    'Content of organisations',
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
                    
                    //ViewPage(0, 0);
                  });
                },
              ),
               InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Context Of Organisations',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                    //ViewPage(0, 0);
                  });
                },
              ),
               InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'External Issues',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                    //ViewPage(0, 0);
                  });
                },
              ),
               InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Internal Issues',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                    //ViewPage(0, 0);
                  });
                },
              ),
               InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Interested Party',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                    //ViewPage(0, 0);
                  });
                },
              ),
               InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Scope',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                    //ViewPage(0, 0);
                  });
                },
              ),
               InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Life Cycle Managment',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                    //ViewPage(0, 0);
                  });
                },
              ),
               InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, bottom: 8.0),
                  child: Text(
                    'Issue Type',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  setState(() {
                    
                    //ViewPage(0, 0);
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
