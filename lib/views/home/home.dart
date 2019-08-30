import 'package:flutter_web/material.dart';
import 'package:iso/models/page_model.dart';
import 'package:iso/packages/provider/provider.dart';
import '../../widgets/all/app_bar_widget.dart';
import '../../widgets/all/drawer_widget/drawer_widget.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final page = Provider.of<PageModel>(context);
    return Scaffold(
      appBar: appBarWidget(),
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: DrawerWidget(),
            ),
            Expanded(
              flex: 5,
              child: page.getViewPage(),
            )
          ],
        ),
      ),
    );
  }

  
}
