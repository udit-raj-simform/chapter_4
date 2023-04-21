import 'package:chapter_4/utils/exports.dart';

class CustomButtonWidget extends StatefulWidget {
  const CustomButtonWidget(
      {Key? key,
      required this.initialColor,
      required this.finalColor,
      this.height,
      this.width,
      required this.radius,
      required this.child,
      this.onPressed})
      : super(key: key);
  final Color initialColor;
  final Color finalColor;
  final double? height;
  final double? width;
  final double radius;
  final Widget child;
  final Function()? onPressed;

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  bool showShadow = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        height: widget.height ?? Constants.deviceHeight / 16.0,
        width: widget.width ?? Constants.deviceWidth / 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
          gradient: LinearGradient(
            colors: [
              widget.initialColor,
              widget.finalColor,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: widget.child,
      ),
    );
  }
}
