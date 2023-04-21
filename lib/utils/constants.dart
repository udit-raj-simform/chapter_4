import 'package:chapter_4/utils/exports.dart';

mixin Constants {

  static final MediaQueryData _mediaQueryData = MediaQueryData.fromWindow(WidgetsBinding.instance.window);

  static final deviceWidth = _mediaQueryData.size.width;
  static final deviceHeight = _mediaQueryData.size.height;
  static final scaffoldHeight = deviceHeight - kToolbarHeight - kBottomNavigationBarHeight;

  static const marginSym = EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0);
  static const paddingSym = EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0);
  static const marginAll = EdgeInsets.all(15.0);
  static const paddingAll = EdgeInsets.all(15.0);
}