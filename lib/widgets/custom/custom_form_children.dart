import 'package:chapter_4/utils/exports.dart';

class CustomFormChildren extends StatefulWidget {
  final String labelText;
  final String hintText;
  final bool isObscure;
  final TextInputType textInputType;
  final TextCapitalization textCapitalization;
  final TextInputAction textInputAction;

  const CustomFormChildren({
    super.key,
    required this.labelText,
    required this.hintText,
    this.isObscure = false,
    this.textInputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction = TextInputAction.next,
  });

  @override
  State<CustomFormChildren> createState() => _CustomFormChildrenState();
}

class _CustomFormChildrenState extends State<CustomFormChildren> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    // _textEditingController.text = widget.hintText;
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          widget.labelText,
          style: Theme.of(context).textTheme.bodyMedium,
          softWrap: true,
          textAlign: TextAlign.start,
        ),
        TextFormField(
          controller: _textEditingController,
          keyboardType: widget.textInputType,
          textCapitalization: widget.textCapitalization,
          textInputAction: widget.textInputAction,
          autocorrect: false,
          obscureText: widget.isObscure,
          obscuringCharacter: '●',
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Colors.black87,
            ),
          ),
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            letterSpacing: (widget.isObscure) ? 2.0 : null,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
