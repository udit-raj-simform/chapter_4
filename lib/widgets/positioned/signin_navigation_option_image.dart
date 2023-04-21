import 'package:chapter_4/utils/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInNavigationOptionImage extends StatelessWidget {
  const SignInNavigationOptionImage(
      {Key? key,
      required this.assetName,
      required this.decorationColor,
      required this.iconColor})
      : super(key: key);
  final String assetName;
  final Color decorationColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: decorationColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(40.0),
        ),
      ),
      child: SvgPicture.asset(
        assetName,
        height: 15.0,
        width: 15.0,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      ),
    );
  }
}
