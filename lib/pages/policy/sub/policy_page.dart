import 'package:flutter_web/material.dart';

class PolicyPage extends StatefulWidget {
  _PolicyPageState createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.red[300],
            height: 40.0,
            child: Center(child: Text('Policy')),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Policy statement',
                  hintStyle: TextStyle(
                    color: Colors.red[200],
                  ),
                ),
                autofocus: true,
                maxLines: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
