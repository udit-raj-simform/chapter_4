import 'package:chapter_4/utils/exports.dart';

class OutlineButtonWidget extends StatelessWidget {
  const OutlineButtonWidget({
    Key? key,
    required this.text,
    this.child,
    required this.height,
    required this.width,
    this.backgroundColor,
    this.borderColor,
    this.iconColor,
    this.foregroundColor,
    this.overlayColor,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final Widget? child;
  final double height;
  final double width;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? iconColor;
  final Color? foregroundColor;
  final Color? overlayColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(
              overlayColor ?? Colors.white,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              foregroundColor ?? Theme.of(context).colorScheme.primary,
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor ?? Colors.transparent,
            ),
            side: MaterialStateProperty.all<BorderSide>(
              BorderSide(
                  color: borderColor ?? Theme.of(context).colorScheme.primary,
                  width: 2.0),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(vertical: height, horizontal: width),
            ),
            animationDuration: const Duration(
              milliseconds: 300,
            ),
          ),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: (Constants.deviceHeight <= 600) ? 15.0 : 20.0,
                  fontFamily: 'Times New Roman',
                ),
              ),
              const SizedBox(
                width: 7.0,
              ),
              child ?? const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
