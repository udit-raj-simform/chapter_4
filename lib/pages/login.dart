import 'package:chapter_4/pages/register.dart';
import 'package:chapter_4/theme/colors.dart';
import 'package:chapter_4/utils/exports.dart';


class LoginPage extends StatefulWidget {
  final bool isTutor;

  const LoginPage({super.key, required this.isTutor});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late int selectedRadio;
  late bool isChecked;

  @override
  void initState() {
    selectedRadio = 1;
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  String whichImage(int selectedRadio, bool isTutor) {
    if (selectedRadio == 1) {
      return (isTutor) ? "his_logo_tutor.jpg" : "his_logo_guardian.jpg";
    } else {
      return (isTutor) ? "her_logo_tutor.jpg" : "her_logo_guardian.jpg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 0.0,
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 33.0,
              left: 4.5,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageOverTabBar(
                  isTutor: widget.isTutor,
                  whichImage: whichImage(selectedRadio, widget.isTutor),
                  toLogin: true,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    CustomLoginHeader(
                      isTutor: widget.isTutor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  padding: Constants.paddingAll,
                  margin: Constants.marginAll,
                  child: Form(
                    child: Column(
                      children: [
                        const CustomFormChildren(
                          labelText: 'Email',
                          hintText: 'name@example.com',
                          textInputType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const CustomFormChildren(
                          labelText: 'Password',
                          hintText: '●●●●●●',
                          isObscure: true,
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 25.0,
                              ),
                            ),
                            CustomButtonWidget(
                              initialColor:
                                  Theme.of(context).colorScheme.primary,
                              finalColor:
                                  Theme.of(context).colorScheme.secondary,
                              height: Constants.deviceHeight / 14,
                              width: Constants.deviceWidth / 4.9,
                              radius: 40.0,
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                debugPrint("button clicked");
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "or login using social media",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                SignInNavigationOptionImage(
                                  assetName: "assets/images/facebook-f.svg",
                                  decorationColor: MyColors.facebookBlue,
                                  iconColor: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SignInNavigationOptionImage(
                                  assetName: "assets/images/google-plus-g.svg",
                                  decorationColor: MyColors.googleRed,
                                  iconColor: Colors.white,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Sign up",
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  height: 0.9,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RegisterPage(
                                            isTutor: widget.isTutor),
                                      ),
                                    );
                                  },
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                text: "Forgot your Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  // height: 0.9,
                                  textBaseline: TextBaseline.ideographic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  indent: Constants.deviceWidth / 3,
                  endIndent: Constants.deviceWidth / 3,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
