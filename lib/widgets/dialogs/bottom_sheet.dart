import 'package:chapter_4/pages/login.dart';
import 'package:chapter_4/theme/colors.dart';
import 'package:chapter_4/utils/exports.dart';
import 'package:chapter_4/widgets/buttons/outline_button.dart';

class BottomSheetDialogWidget extends StatelessWidget {
  const BottomSheetDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: Constants.paddingAll,
      margin: (Constants.deviceHeight <= 800)
          ? const EdgeInsets.all(5.0)
          : Constants.marginSym,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Flexible(
                  child: Text(
                    "Sign In as...",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w400,
                      height: 1.1,
                      fontFamily: 'Times New roman',
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            OutlineButtonWidget(
                text: "I am a Tutor",
                height: Constants.deviceHeight / 40.50,
                width: Constants.deviceWidth / 5.60,
                child: const ImageIcon(
                  AssetImage("assets/images/enter.png"),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(isTutor: true),
                    ),
                  );
                }),
            const SizedBox(
              height: 8.0,
            ),
            OutlineButtonWidget(
                text: "I am a Guardian",
                height: Constants.deviceHeight / 40.50,
                width: Constants.deviceWidth / 8.0,
                child: const ImageIcon(
                  AssetImage("assets/images/enter.png"),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(isTutor: false),
                    ),
                  );
                }),
            const SizedBox(
              height: 7.0,
            ),
            Flexible(
              child: Divider(
                thickness: 2.0,
                indent: Constants.deviceWidth / 4.0,
                endIndent: Constants.deviceWidth / 4.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "or login using social media",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 7.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SignInNavigationOptionImage(
                      assetName: "assets/images/facebook-f.svg",
                      decorationColor: MyColors.facebookBlue,
                      iconColor: Colors.white,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    SignInNavigationOptionImage(
                      assetName: "assets/images/google-plus-g.svg",
                      decorationColor: MyColors.googleRed,
                      iconColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
