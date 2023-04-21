import 'package:chapter_4/pages/enquiry_page.dart';
import 'package:chapter_4/pages/register.dart';
import 'package:chapter_4/utils/exports.dart';
import 'package:chapter_4/widgets/app_bar.dart';
import 'package:chapter_4/widgets/background/glassmorphism.dart';
import 'package:chapter_4/widgets/buttons/custom_3d_button.dart';
import 'package:chapter_4/widgets/dialogs/bottom_sheet.dart';
import 'package:chapter_4/widgets/dialogs/bottom_sheet_for_XS_devices.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: const AppBarWidget(),
    backgroundColor: Theme.of(context).colorScheme.background,
    extendBodyBehindAppBar: true,
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0),
                ),
              ),
              width: Constants.deviceWidth / 2.0,
              height: Constants.deviceHeight / 4.0,
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Constants.deviceHeight / 6.7,
                width: Constants.deviceWidth / 3.2,
                margin: const EdgeInsets.only(bottom: 25.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100.0),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/home_logo.png"),
                ),
              ),
            ),
            SizedBox(
              height: Constants.deviceHeight / 8,
            ),
            GlassMorphicBackground(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Flexible(
                        child: Text(
                          "Care Tutors",
                          style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.w400,
                            height: 1.1,
                            fontFamily: 'StudioSans',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Constants.deviceHeight / 160,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Flexible(
                        child: Text("Find Only Verified Tutors Here",
                            style: TextStyle(
                              fontFamily: 'StudioSans',
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Constants.deviceHeight / 23,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: CustomButtonWidget(
                          initialColor: Theme.of(context).colorScheme.primary,
                          finalColor: Theme.of(context).colorScheme.secondary,
                          radius: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Flexible(
                                flex: 2,
                                child: Text(
                                  "Hire a Tutor",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontFamily: 'StudioSans',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Flexible(
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white)),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const RegisterPage(isTutor: false),
                              ),
                            );
                          },
                        ),
                      ),
                      Flexible(
                        child: CustomButtonWidget(
                          initialColor: Theme.of(context).colorScheme.primary,
                          finalColor: Theme.of(context).colorScheme.secondary,
                          radius: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Flexible(
                                flex: 3,
                                child: Text(
                                  "Become Tutor",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontFamily: 'StudioSans',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Flexible(
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white)),
                            ],
                          ),
                          onPressed: () {
                            // debugPrint(Constants.deviceWidth.toString());
                            // debugPrint(Constants.deviceHeight.toString());
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const RegisterPage(isTutor: true),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Custom3DButton(
                          title: 'Sign In',
                          onPressed: () => showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) =>
                            (Constants.deviceHeight < 600)
                                ? const BottomSheetXSDialogWidget()
                                : const BottomSheetDialogWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Flexible(
                        child: Icon(
                          Icons.help_outline_rounded,
                          color: Colors.blueGrey,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Flexible(
                        child: RichText(
                          text: TextSpan(children: [
                            const TextSpan(
                              text: "Need Help? ",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontFamily: 'StudioSans',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Enquire Us",
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontFamily: 'StudioSans',
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                      const EnquiryPage(),
                                    ),
                                  );
                                },
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
