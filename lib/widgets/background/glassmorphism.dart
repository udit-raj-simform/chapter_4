import 'dart:ui';

import 'package:chapter_4/utils/exports.dart';

class GlassMorphicBackground extends StatelessWidget {
  const GlassMorphicBackground({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          margin: Constants.marginSym,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.withOpacity(0.2),
                Colors.blue.withOpacity(0.3),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              width: 1.5,
              color: Colors.blue.withOpacity(0.2),
            ),
          ),
          child: Padding(padding: Constants.paddingSym, child: child),
        ),
      ),
    );
  }
}
