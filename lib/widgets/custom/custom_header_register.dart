import 'package:chapter_4/utils/exports.dart';

class CustomRegisterHeader extends StatelessWidget {
  const CustomRegisterHeader({Key? key, required this.isTutor})
      : super(key: key);
  final bool isTutor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Register as a ",
          style: Theme.of(context).textTheme.bodyLarge,
          softWrap: true,
        ),
        Text(
          (isTutor) ? "Tutor" : "Guardian",
          style: Theme.of(context).textTheme.bodyLarge,
          softWrap: true,
          textAlign: TextAlign.start,
        ),
        Text(
          "Signup to Continue",
          style: Theme.of(context).textTheme.bodyMedium,
          softWrap: true,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
