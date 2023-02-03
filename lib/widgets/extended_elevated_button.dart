import 'package:flutter/material.dart';
import 'package:homate/core/homate_logger.dart';
import 'package:homate/interfaces/i_logging.dart';

import '../utilities/color_utilities.dart';

class ExtendedElevatedButton extends StatelessWidget {
  const ExtendedElevatedButton(
      {super.key,
      required this.width,
      required this.height,
      required this.label,
      required this.iconData,
      this.ilogger});

  final double width;
  final double height;
  final String label;
  final IconData iconData;

  final ILogging? ilogger;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          backgroundColor: HomateColorHelper.homateOrange),
      icon: Icon(iconData),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(label, textScaleFactor: width / height * 1.45),
      ),
      onPressed: () => ilogger?.loggingLogic(),
    );
  }
}
