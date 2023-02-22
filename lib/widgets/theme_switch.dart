import 'package:flutter/material.dart';
import 'package:homate/main.dart';
import 'package:homate/utilities/color_utilities.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

const List<Widget> icons = <Widget>[
  Icon(Icons.dark_mode_rounded),
  Icon(Icons.light_mode),
];

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    var modes = MyApp.of(context).getModes();
    return ToggleButtons(
      direction: Axis.horizontal,
      onPressed: (int index) {
        setState(() {
          // The button that is tapped is set to true, and the others to false.
          for (int i = 0; i < modes.length; i++) {
            modes[i] = i == index;
            if (modes[i]) {
              MyApp.of(context)
                  .changeTheme(i == 0 ? ThemeMode.dark : ThemeMode.light);
            }
          }
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedBorderColor: HomateColorHelper.homateOrange[700],
      selectedColor: Colors.white,
      fillColor: HomateColorHelper.homateOrange[200],
      color: HomateColorHelper.homateOrange[400],
      constraints: const BoxConstraints(
        minHeight: 40.0,
        minWidth: 80.0,
      ),
      isSelected: modes,
      children: icons,
    );
  }
}
