import 'package:flutter_web/material.dart';
import 'package:iso/styles/all/all.dart';
import 'package:iso/styles/pages/pages.dart';

class DocumentInformationPage extends StatefulWidget {
  _DocumentInformationPageState createState() =>
      _DocumentInformationPageState();
}

class _DocumentInformationPageState extends State<DocumentInformationPage> {
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
          bodyPage(),
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
            'Document information',
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
            activeColor: Colors.red,
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
                'Document Name',
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
                'Document Number',
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
                'Document type',
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
                'media',
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
                'version/revision number',
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
                'issue date',
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
                'revision date',
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
                'prepared by',
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
                'approved by',
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
                'Attachment',
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
      //rows
      child: ListView(
        children: <Widget>[
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  activeColor: Colors.red,
                  onChanged: (bool isCheck) {},
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ))),
                    child: Center(
                        child: Text(
                      '1',
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ))),
                    child: Center(
                        child: Text(
                      'ahmed',
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Egypt',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    child: SizedBox(
                      height: 20.0,
                      width: 20.0, // fixed width and height
                      child: Image.asset('icons/edit.png'),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  //add or update item
  Widget _buildUpdateDialog(BuildContext context) {
    //Document types
    List<DropdownMenuItem<String>> _documentTypes = <String>[
      'processes',
      'procedure',
      'work instruction',
      'external document'
    ].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
    //Medias
    List<DropdownMenuItem<String>> _medias =
        <String>['Hardcopy', 'Softcopy', 'others'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
    //Version or revetsion numbers
    List<DropdownMenuItem<String>> _verRevNumbers =
        <String>['Version', 'Reversion'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();

    return AlertDialog(
      title: const Text('Add new item'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Document name'),
            TextField(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Document number'),
            ),
            TextField(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Document type'),
            ),
            DropdownButton(
              value: _documentTypes[0].value,
              items: _documentTypes,
              onChanged: (String item) {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('media'),
            ),
            DropdownButton(
              value: _medias[0].value,
              items: _medias,
              onChanged: (String item) {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('version/revision number'),
            ),
            DropdownButton(
              value: _verRevNumbers[0].value,
              items: _verRevNumbers,
              onChanged: (String item) {},
            ),
            //Issue Date
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Issue date'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    enabled: false,
                  ),
                ),
                Container(
                  width: 60.0,
                  padding: EdgeInsets.only(top: 12.0),
                  child: FlatButton(
                    child: Icon(Icons.access_time),
                    onPressed: () async {
                      DateTime x = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2050));
                    },
                  ),
                ),
              ],
            ),
            //revision Date
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('revision date'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    enabled: false,
                  ),
                ),
                Container(
                  width: 60.0,
                  padding: EdgeInsets.only(top: 12.0),
                  child: FlatButton(
                    child: Icon(Icons.access_time),
                    onPressed: () async {
                      DateTime x = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2050));
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('prepared by'),
            ),
            TextField(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('approved by'),
            ),
            TextField(),
            //Attachment
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Attachment'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    enabled: false,
                  ),
                ),
                Container(
                  width: 60.0,
                  padding: EdgeInsets.only(top: 12.0),
                  child: FlatButton(
                    child: Icon(Icons.file_upload),
                    onPressed: () async {},
                  ),
                ),
              ],
            ),
          ],
        ),
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
