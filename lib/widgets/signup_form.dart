import 'package:flutter/material.dart';

import '../core/facebook_logger.dart';
import '../core/google_logger.dart';
import 'extended_elevated_button.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExtendedElevatedButton(
              width: width,
              height: height,
              label: 'Sign-in with Google',
              iconData: Icons.g_mobiledata,
              ilogger: GoogleLogger(),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExtendedElevatedButton(
              width: width,
              height: height,
              label: 'Sign-in with Facebook',
              iconData: Icons.facebook,
              ilogger: FacebookLogger(),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExtendedElevatedButton(
              width: width,
              height: height,
              label: 'Sign-in with Apple',
              iconData: Icons.apple,
              ilogger: FacebookLogger(),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExtendedElevatedButton(
              width: width,
              height: height,
              label: 'Sign-in with Microsoft',
              iconData: Icons.window_sharp,
              ilogger: FacebookLogger(),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: ExtendedElevatedButton(
              width: width,
              height: height,
              label: 'Sign Up',
              iconData: Icons.login),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
    );
  }
}
