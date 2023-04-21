import 'package:chapter_4/theme/colors.dart';
import 'package:chapter_4/utils/exports.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() => ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          background: MyColors.background,
          onBackground: MyColors.onBackground,
          primary: MyColors.primary,
          secondary: MyColors.secondary,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF2F5FC), width: 2.0),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF2F5FC), width: 2.0),
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.w400,
            height: 1.1,
            fontFamily: 'StudioSans',
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
            color: Colors.grey,
            fontFamily: 'StudioSans',
          ),
        ),
      );
}
