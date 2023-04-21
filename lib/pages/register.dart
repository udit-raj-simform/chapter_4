import 'package:chapter_4/theme/colors.dart';
import 'package:chapter_4/utils/exports.dart';

class RegisterPage extends StatefulWidget {
  final bool isTutor;

  const RegisterPage({super.key, required this.isTutor});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late int selectedRadio;
  late bool isChecked;

  @override
  void initState() {
    selectedRadio = 1;
    isChecked = false;
    super.initState();
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
          systemNavigationBarColor: Colors.transparent,
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
                  toLogin: false,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRegisterHeader(
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
                          labelText: 'Name',
                          hintText: 'John Doe',
                          textInputType: TextInputType.name,
                          textCapitalization: TextCapitalization.words,
                        ),
                        const CustomFormChildren(
                          labelText: 'Phone Number',
                          hintText: '+88 01234 11 22 33',
                          textInputType: TextInputType.number,
                        ),
                        const CustomFormChildren(
                          labelText: 'Email',
                          hintText: 'name@example.com',
                          textInputType: TextInputType.emailAddress,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Gender",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                            CustomRadioTileWidget(
                              title: "Male",
                              value: 1,
                              selectedRadio: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value!;
                                });
                              },
                            ),
                            CustomRadioTileWidget(
                              title: "Female",
                              value: 2,
                              selectedRadio: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value!;
                                });
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const CustomFormChildren(
                          labelText: 'Password',
                          hintText: '●●●●●●',
                          isObscure: true,
                          textInputType: TextInputType.visiblePassword,
                        ),
                        const CustomFormChildren(
                          labelText: 'Confirm Password',
                          hintText: '●●●●●●',
                          isObscure: true,
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                isChecked = value!;
                                setState(() {});
                              },
                              focusColor:
                                  Theme.of(context).colorScheme.secondary,
                              hoverColor: Colors.cyanAccent,
                              activeColor: Colors.red,
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.all<Color>(
                                  (isChecked)
                                      ? Theme.of(context).colorScheme.secondary
                                      : Colors.grey),
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "I agree to ",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  TextSpan(
                                      text: "Terms of Service",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const TermsAndServicesPage(),
                                            ),
                                          );
                                        }),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Sign up",
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
                              onPressed: () {},
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
                              height: 10,
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
