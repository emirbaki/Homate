import 'package:flutter/material.dart';

import '../core/facebook_logger.dart';
import '../core/google_logger.dart';
import 'extended_elevated_button.dart';
import 'extended_textfield.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget({
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
          child: Container(
            alignment: Alignment.center,
            child: const Text('HOMATE'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        const Expanded(
          flex: 2,
          child: ExtendedTextField(
              hintText: 'Enter your Email', iconData: Icons.email_outlined),
        ),
        const Expanded(
          flex: 2,
          child: ExtendedTextField(
              hintText: 'Enter your Password', iconData: Icons.key),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExtendedElevatedButton(
                    width: width,
                    height: height,
                    label: 'Login with Google',
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
                    label: 'Login with Facebook',
                    iconData: Icons.facebook,
                    ilogger: FacebookLogger(),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: ExtendedElevatedButton(
              width: width,
              height: height,
              label: 'Login',
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
