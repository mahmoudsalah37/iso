import 'package:flutter_web/material.dart';
import 'package:iso/controllers/all/controllers.dart';
import 'package:iso/models/pages/policy/policy.dart';
import 'package:iso/styles/all/all.dart';

class PolicyPage extends StatefulWidget {
  _PolicyPageState createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  String _textPolicy = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: colorContext,
            height: 40.0,
            child: Center(
                child: Text(
              'Policy',
              style: tsMainText,
            )),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Policy statement',
                      hintStyle: TextStyle(
                        color: colorHintText,
                      ),
                    ),
                    maxLines: 30,
                    onChanged: (String textPolicy) {
                      this._textPolicy = textPolicy;
                      setState(() {});
                    },
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              highlightColor: Colors.blueAccent[300],
              hoverColor: Colors.blueAccent[100],
              color: Colors.white,
              child: Text(
                'Save',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () async {
                print('-----------');
                String j = await makeGetRequest();
                print(j);
                print('-----------');
              },
            ),
          )
        ],
      ),
    );
  }
}
