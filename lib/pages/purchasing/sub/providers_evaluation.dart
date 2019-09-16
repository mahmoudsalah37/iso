import 'package:flutter_web/material.dart';
import 'package:iso/packages/smooth_star_rating/smooth_star_rating.dart';
import 'package:iso/styles/all/all.dart';

class ProvidersEvaluationPage extends StatefulWidget {
  _ProvidersEvaluationPageState createState() =>
      _ProvidersEvaluationPageState();
}

class _ProvidersEvaluationPageState extends State<ProvidersEvaluationPage> {
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
            'Providers Evaluation',
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
                  builder: (BuildContext context) => Update('Add new item'),
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
                'Provider name',
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
                'Evaluation Date',
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
                'Quality of product or service',
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
                'Adherence to delivery schedule',
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
                'Pricing competitiveness',
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
                'Score',
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
                'score',
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
                'Market Credibility',
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
                'Responsiveness and Cooperation',
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
                'Total Score',
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
                'Evaluated By',
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

class Update extends StatefulWidget {
  final String title;
  Update(this.title);
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  double rate0 = 0, rate1 = 0, rate2 = 0, rate3 = 0, rate4 = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: SingleChildScrollView(
              child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Provider name'),
            TextField(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Evaluation Date'),
            ),
            TextField(
              onTap: () {
                var x = showDatePicker(
                  context: context,
                  firstDate: DateTime(1950),
                  initialDate: DateTime.now(),
                  lastDate: DateTime(2050),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Quality of product or service'),
            ),
            SmoothStarRating(
              starCount: 10,
              rating: rate0,
              size: 20.0,
              color: Colors.yellow,
              borderColor: Colors.yellow,
              spacing: 0.0,
              allowHalfRating: false,
              onRatingChanged: (double v) {
                rate0 = v;
                setState(() {});
                print('before $rate0');
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Adherence to delivery schedule'),
            ),
            SmoothStarRating(
              starCount: 10,
              rating: rate1,
              size: 20.0,
              color: Colors.yellow,
              borderColor: Colors.yellow,
              spacing: 0.0,
              allowHalfRating: false,
              onRatingChanged: (double v) {
                rate1 = v;
                setState(() {});
                print('before $rate1');
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Pricing competitiveness'),
            ),
            TextField(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('score'),
            ),
            SmoothStarRating(
              starCount: 10,
              rating: rate2,
              size: 20.0,
              color: Colors.yellow,
              borderColor: Colors.yellow,
              spacing: 0.0,
              allowHalfRating: false,
              onRatingChanged: (double v) {
                rate2 = v;
                setState(() {});
                print('before $rate2');
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Market Credibility'),
            ),
            SmoothStarRating(
              starCount: 10,
              rating: rate3,
              size: 20.0,
              color: Colors.yellow,
              borderColor: Colors.yellow,
              spacing: 0.0,
              allowHalfRating: false,
              onRatingChanged: (double v) {
                rate3 = v;
                setState(() {});
                print('before $rate3');
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Responsiveness and Cooperation'),
            ),
            SmoothStarRating(
              starCount: 10,
              rating: rate4,
              size: 20.0,
              color: Colors.yellow,
              borderColor: Colors.yellow,
              spacing: 0.0,
              allowHalfRating: false,
              onRatingChanged: (double v) {
                rate4 = v;
                setState(() {});
                print('before $rate4');
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Total score'),
            ),
            TextField(
              enabled: false,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Evaluated By'),
            ),
            TextField(),
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
}
