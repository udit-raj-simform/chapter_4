import 'package:chapter_4/utils/exports.dart';

class CustomLoginHeader extends StatelessWidget {
  const CustomLoginHeader({Key? key, required this.isTutor}) : super(key: key);
  final bool isTutor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Welcome Back",
          style: Theme.of(context).textTheme.bodyLarge,
          softWrap: true,
        ),
        Text(
          "Signin to Continue",
          style: Theme.of(context).textTheme.bodyMedium,
          softWrap: true,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
