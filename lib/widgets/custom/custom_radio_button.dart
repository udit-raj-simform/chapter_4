import 'package:chapter_4/utils/exports.dart';

class CustomRadioButtonWidget extends StatefulWidget {
  const CustomRadioButtonWidget(
      {Key? key,
      required this.context,
      required this.value,
      required this.groupValue,
      this.onChanged})
      : super(key: key);
  final int value;
  final int groupValue;
  final BuildContext context;
  final Function(int?)? onChanged;

  @override
  State<CustomRadioButtonWidget> createState() =>
      _CustomRadioButtonWidgetState();
}

class _CustomRadioButtonWidgetState extends State<CustomRadioButtonWidget> {
  late final Color color;
  late final Color selectedColor;

  @override
  void initState() {
    color = Theme.of(widget.context).colorScheme.onBackground;
    selectedColor = Theme.of(widget.context).colorScheme.secondary;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool itemSelected = widget.value != widget.groupValue;
        if (itemSelected) {
          widget.onChanged!(widget.value);
        }
      },
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: (widget.value == widget.groupValue) ? selectedColor : color,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: (widget.value == widget.groupValue)
            ? const Icon(
                Icons.check,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
