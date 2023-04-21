import 'package:chapter_4/utils/exports.dart';
import 'package:chapter_4/widgets/custom/custom_radio_button.dart';

class CustomRadioTileWidget extends StatefulWidget {
  const CustomRadioTileWidget({
    Key? key,
    required this.value,
    required this.selectedRadio,
    this.onChanged,
    required this.title,
  }) : super(key: key);
  final String title;
  final int selectedRadio;
  final int value;
  final Function(int?)? onChanged;

  @override
  State<CustomRadioTileWidget> createState() => _CustomRadioTileWidgetState();
}

class _CustomRadioTileWidgetState extends State<CustomRadioTileWidget> {
  @override
  Widget build(BuildContext context) {
    const Color textColor = Colors.black;
    const Color selectedTextColor = Colors.white;
    final Color containerColor = Theme.of(context).colorScheme.background;
    final Color selectedContainerColor = Theme.of(context).colorScheme.primary;
    return Flexible(
      child: Container(
        height: Constants.deviceHeight / 20,
        width: Constants.deviceWidth / 2.45,
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: (widget.selectedRadio == widget.value)
              ? selectedContainerColor
              : containerColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomRadioButtonWidget(
              context: context,
              value: widget.value,
              groupValue: widget.selectedRadio,
              onChanged: widget.onChanged,
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              widget.title,
              style: TextStyle(
                color: (widget.selectedRadio == widget.value)
                    ? selectedTextColor
                    : textColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
