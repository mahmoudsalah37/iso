import 'package:flutter_web/material.dart';
import 'package:iso/styles/all/all.dart';

class GMSScopePage extends StatefulWidget {
  _GMSScopePageState createState() => _GMSScopePageState();
}

class _GMSScopePageState extends State<GMSScopePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 40.0,
            color: Colors.red[300],
            child: Row(
              children: <Widget>[
                SizedBox(width: 4.0,),
                Text(
                  'QMS Scope',
                  style: textStyle,
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                        height: 20.0,
                        width: 20.0, // fixed width and height
                        child: Image.asset('icons/search.png')),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
