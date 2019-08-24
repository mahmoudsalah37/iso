import 'package:flutter_web/material.dart';
import 'package:iso/models/page_model.dart';
import 'package:iso/packages/provider/provider.dart';
import 'package:iso/widgets/all/view_page.dart';

import 'views/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartIso',
      theme: ThemeData(),
      home: ChangeNotifierProvider<PageModel>(
        builder: (_) => PageModel(ViewPage(0, 0)),
        child: Home(),
      ),
    );
  }
}
