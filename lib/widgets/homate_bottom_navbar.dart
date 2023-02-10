import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomateBottomNavBar extends StatelessWidget {
  const HomateBottomNavBar({
    super.key,
    required this.context,
    required this.items,
    this.currentIndex = 0,
    this.shape = const CircularNotchedRectangle(),
    this.onTap,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.selectedColorOpacity,
    this.itemShape = const StadiumBorder(),
    this.margin = const EdgeInsets.all(8),
    this.itemPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeOutQuint,
  });

  final List<HomateBottomNavBarItem> items;
  final BuildContext context;
  final int currentIndex;
  final NotchedShape shape;

  /// Returns the index of the tab that was tapped.
  final Function(int)? onTap;

  /// The color of the icon and text when the item is selected.
  final Color? selectedItemColor;

  /// The color of the icon and text when the item is not selected.
  final Color? unselectedItemColor;

  /// The opacity of color of the touchable background when the item is selected.
  final double? selectedColorOpacity;

  /// The border shape of each item.
  final ShapeBorder itemShape;

  /// A convenience field for the margin surrounding the entire widget.
  final EdgeInsets margin;

  /// The padding of each item.
  final EdgeInsets itemPadding;

  /// The transition duration
  final Duration duration;

  /// The transition curve
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: BottomAppBar(
        notchMargin: 3,
        shape: shape,
        child: Row(
            mainAxisAlignment: items.length <= 2
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.spaceBetween,
            children: builderMetodu(theme)),
      ),
    );
  }

  List<Widget> builderMetodu(ThemeData theme) {
    return [
      for (final item in items)
        TweenAnimationBuilder<double>(
          tween: Tween(
            end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
          ),
          curve: curve,
          duration: duration,
          //bos navbar için 2.indeksteki itemi boş bıraktırma
          builder: items.indexOf(item) == 2
              ? (context, t, _) {
                  return const Expanded(
                    child: Opacity(
                        opacity: 0,
                        child: IconButton(
                          icon: Icon(Icons.no_cell),
                          onPressed: null,
                        )),
                  );
                }
              : (context, t, _) {
                  final selectedColor = item.selectedColor ??
                      selectedItemColor ??
                      theme.primaryColor;

                  final unselectedColor = item.unselectedColor ??
                      unselectedItemColor ??
                      theme.iconTheme.color;

                  return Expanded(
                    child: Material(
                      color: Color.lerp(
                          selectedColor.withOpacity(0.0),
                          selectedColor
                              .withOpacity(selectedColorOpacity ?? 0.1),
                          t),
                      shape: itemShape,
                      child: SizedBox(
                        height: 64,
                        child: InkWell(
                          onTap: () => onTap?.call(items.indexOf(item)),
                          customBorder: itemShape,
                          focusColor: selectedColor.withOpacity(0.1),
                          highlightColor: selectedColor.withOpacity(0.1),
                          splashColor: selectedColor.withOpacity(0.1),
                          hoverColor: selectedColor.withOpacity(0.1),
                          child: Padding(
                            padding: itemPadding -
                                (Directionality.of(context) == TextDirection.ltr
                                    ? EdgeInsets.only(
                                        right: itemPadding.right * t)
                                    : EdgeInsets.only(
                                        left: itemPadding.left * t)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                IconTheme(
                                  data: IconThemeData(
                                    color: Color.lerp(
                                        unselectedColor, selectedColor, t),
                                    size: 24,
                                  ),
                                  child: items.indexOf(item) == currentIndex
                                      ? item.activeIcon ?? item.icon
                                      : item.icon,
                                ),
                                ClipRect(
                                  clipBehavior: Clip.antiAlias,
                                  child: SizedBox(
                                    /// TODO: Constrain item height without a fixed value
                                    ///
                                    /// The Align property appears to make these full height, would be
                                    /// best to find a way to make it respond only to padding.
                                    height: 20,
                                    child: Align(
                                      alignment: const Alignment(0, 0),
                                      widthFactor: t,
                                      child: DefaultTextStyle(
                                        style: TextStyle(
                                          color: Color.lerp(
                                              selectedColor.withOpacity(0.0),
                                              selectedColor,
                                              t),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                        ),
                                        child: item.title,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
        ),
    ];
  }
}

class HomateBottomNavBarItem {
  final Widget icon;

  /// An icon to display when this tab bar is active.
  final Widget? activeIcon;

  /// Text to display, ie `Home`
  final Widget title;

  /// A primary color to use for this tab.
  final Color? selectedColor;

  /// The color to display when this tab is not selected.
  final Color? unselectedColor;

  HomateBottomNavBarItem({
    required this.icon,
    required this.title,
    this.selectedColor,
    this.unselectedColor,
    this.activeIcon,
  });
}
