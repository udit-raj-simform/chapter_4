import 'package:chapter_4/pages/login.dart';
import 'package:chapter_4/utils/exports.dart';
import 'package:chapter_4/widgets/buttons/outline_button.dart';

class BottomSheetXSDialogWidget extends StatelessWidget {
  const BottomSheetXSDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.deviceHeight / 2.25,
      padding: Constants.paddingAll,
      margin: Constants.marginSym,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Column(
          children: [
            Divider(
              thickness: 3.0,
              indent: Constants.deviceWidth / 4.0,
              endIndent: Constants.deviceWidth / 4.0,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 14.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButtonWidget(
                    text: "Tutor",
                    height: Constants.deviceHeight / 40.20,
                    width: Constants.deviceWidth / 9,
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
                  width: 8.0,
                ),
                OutlineButtonWidget(
                  text: "Guardian",
                  height: Constants.deviceHeight / 40.20,
                  width: Constants.deviceWidth / 14,
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
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
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
                  height: 8.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInNavigationOptionImage(
                      assetName: "assets/images/facebook-f.svg",
                      decorationColor: Colors.blue.shade800,
                      iconColor: Colors.white,
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    SignInNavigationOptionImage(
                      assetName: "assets/images/google-plus-g.svg",
                      decorationColor: Colors.red.shade800,
                      iconColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.secondary),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 100,
                    child: const Text(
                      "Close",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                        color: Colors.white,
                        fontFamily: "Times new roman",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
