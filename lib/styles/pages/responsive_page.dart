import 'package:flutter_web/cupertino.dart';

class ResponsivePage {
  BuildContext context;
  double _resH, _resW;
  ResponsivePage(this.context) {
    _resH = MediaQuery.of(context).size.height / 100.0;
    _resW = MediaQuery.of(context).size.width / 100.0;
  }
  double resH(double h) => h * _resH;
  double resW(double w) => w * _resW;
}
