import 'package:chapter_4/utils/exports.dart';

class ImageOverTabBar extends StatelessWidget {
  const ImageOverTabBar(
      {Key? key,
      required this.isTutor,
      required this.whichImage,
      required this.toLogin})
      : super(key: key);
  final bool isTutor;
  final String whichImage;
  final bool toLogin;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(100.0),
          bottomRight: Radius.circular(100.0),
        ),
      ),
      width: Constants.deviceWidth / (toLogin ? 2.20 : 2.5),
      height: Constants.deviceHeight / (toLogin ? 3.9 : 4.2),
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 120.0,
        width: 120.0,
        margin: const EdgeInsets.only(bottom: 25.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
        ),
        child: Image.asset("assets/images/$whichImage"),
      ),
    );
  }
}
