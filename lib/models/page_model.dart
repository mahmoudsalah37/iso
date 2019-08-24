import 'package:flutter_web/cupertino.dart';
import 'package:iso/widgets/all/view_page.dart';

class PageModel with ChangeNotifier {
  ViewPage _viewPage;

  PageModel(this._viewPage);

  getViewPage() => _viewPage;

  setViewPage(ViewPage v) {
    _viewPage = v;
    notifyListeners();
  }
}
