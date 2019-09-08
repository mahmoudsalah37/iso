import 'package:flutter_web/material.dart';
import 'package:iso/styles/all/all.dart';

class JobDescriptionPage extends StatefulWidget {
  _JobDescriptionPageState createState() => _JobDescriptionPageState();
}

class _JobDescriptionPageState extends State<JobDescriptionPage> {
  String _textSearch;
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Head
          headPage(context),
          //Body
          bodyPage()
        ],
      ),
    );
  }

  //Head page
  Container headPage(BuildContext context) {
    return Container(
      height: 40.0,
      color: colorContext,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 4.0,
          ),
          Text(
            'Job Description',
            style: tsMainText,
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
                height: 15.0,
                width: 15.0, // fixed width and height
                child: Image.asset('icons/search.png')),
          ),
          Container(
            width: 178,
            child: Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    width: 150,
                    height: 37.0,
                    color: Colors.white,
                    child: TextField(
                      maxLines: 1,
                      onChanged: (String textSearch) {
                        this._textSearch = textSearch;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20.0),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              child: SizedBox(
                height: 15.0,
                width: 15.0, // fixed width and height
                child: Image.asset('icons/delete.png'),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      _buildDeleteDialog(context),
                );
              },
            ),
          ),
          SizedBox(width: 20.0),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              child: Row(
                children: <Widget>[
                  SizedBox(
                      height: 15.0,
                      width: 15.0, // fixed width and height
                      child: Image.asset('icons/add.png')),
                  SizedBox(width: 4.0),
                  Text(
                    'Add New',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      _buildUpdateDialog(context),
                );
              },
            ),
          ),
          SizedBox(width: 20.0),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
                height: 15.0,
                width: 15.0, // fixed width and height
                child: Image.asset('icons/menu.png')),
          ),
          SizedBox(width: 20.0),
        ],
      ),
    );
  }

  //Body page
  Container bodyPage() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          //Head table
          headTable(),
          //Body table
          bodyTable()
        ],
      ),
    );
  }

  //Head table
  Container headTable() {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          top: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Checkbox(
            value: this._isCheck,
            activeColor: colorCheckBox,
            key: UniqueKey(),
            onChanged: (bool isCheck) {
              this._isCheck = isCheck;
              setState(() {});
            },
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ))),
              child: Center(
                  child: Text(
                'S No',
                style: textStyleColumnText,
              )),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ))),
              child: Center(
                  child: Text(
                'Job title',
                style: textStyleColumnText,
              )),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ))),
              child: Center(
                  child: Text(
                'Report to',
                style: textStyleColumnText,
              )),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ))),
              child: Center(
                  child: Text(
                'Required Qualification',
                style: textStyleColumnText,
              )),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ))),
              child: Center(
                  child: Text(
                'Experience',
                style: textStyleColumnText,
              )),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ))),
              child: Center(
                  child: Text(
                'Skills',
                style: textStyleColumnText,
              )),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ))),
              child: Center(
                  child: Text(
                'Rules and Responsibilities',
                style: textStyleColumnText,
              )),
            ),
          ),
          Opacity(
            opacity: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: 20.0,
                width: 20.0, // fixed width and height
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Body table
  Container bodyTable() {
    return Container(
      height: 500.0,
    );
  }

  //add or update item
  Widget _buildUpdateDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Add new item'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Job title'),
          TextField(
            
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('Report to'),
          ),
          TextField(
            
          ),
           Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('Required Qualification'),
          ),
          TextField(
            
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('Experience'),
          ),
          TextField(
            
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('Skills'),
          ),
          TextField(
            
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('Rules and Responsibilities'),
          ),
          TextField(
            
          ),
        ],
      ),
   actions: <Widget>[
        FlatButton(
          highlightColor: colorFlatHighLightPositive,
          hoverColor: colorFlatHoverPositive,
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {});
          },
          textColor: colorPositiveText,
          child: const Text('save'),
        ),
        FlatButton(
          highlightColor: colorFlatHighLightNegative,
          hoverColor: colorFlatHoverNegative,
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {});
          },
          textColor: colorNegativeText,
          child: const Text('cancel'),
        ),
      ],
    );
  }

  // Delete items
  Widget _buildDeleteDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete items'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[],
      ),
      actions: <Widget>[
        FlatButton(
          highlightColor: colorFlatHighLightNegative,
          hoverColor: colorFlatHoverNegative,
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {});
          },
          textColor: colorNegativeText,
          child: const Text('Ok'),
        ),
        FlatButton(
          highlightColor: colorFlatHighLightPositive,
          hoverColor: colorFlatHoverPositive,
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {});
          },
          textColor: colorPositiveText,
          child: const Text('cancel'),
        ),
      ],
    );
  }
}