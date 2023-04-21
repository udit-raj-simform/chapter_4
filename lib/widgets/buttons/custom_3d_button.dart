import 'package:chapter_4/utils/exports.dart';
class Custom3DButton extends StatefulWidget {
  const Custom3DButton({
    Key? key,
    required this.title,
    this.iconData,
    this.onPressed,
    this.height,
    this.width,
  }) : super(key: key);
  final String title;
  final IconData? iconData;
  final Function()? onPressed;
  final double? height;
  final double? width;

  @override
  State<Custom3DButton> createState() => _Custom3DButtonState();
}

class _Custom3DButtonState extends State<Custom3DButton> {
  bool showShadow = true;

  @override
  Widget build(BuildContext context) {
    List<BoxShadow>? boxShadow = [
      BoxShadow(
        color: Theme.of(context).colorScheme.secondary,
        spreadRadius: 2.0,
        blurRadius: 8.0,
        offset: const Offset(4.0, 4.0),
      ),
      BoxShadow(
        color: Theme.of(context).colorScheme.background,
        spreadRadius: 2.0,
        blurRadius: 8.0,
        offset: const Offset(-4.0, -4.0),
      ),
    ];

    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          showShadow = false;
        });
      },
      onTapUp: (details) {
        setState(() {
          showShadow = true;
        });
      },
      onTap: widget.onPressed,
      child: AnimatedContainer(
        height: widget.height ?? Constants.deviceHeight / 16,
        width: widget.width ?? Constants.deviceWidth / 2.5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: showShadow
                  ? [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                    ]
                  : [
                      Theme.of(context).colorScheme.background,
                      Theme.of(context).colorScheme.onBackground,
                    ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(40.0),
          boxShadow: showShadow ? boxShadow : [],
        ),
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 300),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  color: showShadow ? Colors.white : Colors.black,
                fontFamily: 'StudioSans',),
            ),
            SizedBox(
              width: (widget.iconData != null) ? 5.0 : 0.0,
            ),
            (widget.iconData != null)
                ? Icon(widget.iconData,
                    color: showShadow ? Colors.white : Colors.black)
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
