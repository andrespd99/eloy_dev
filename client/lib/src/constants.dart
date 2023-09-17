// ignore_for_file: no_default_cases

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

sealed class Constants {
  /// The size of the grid system in the app. All the sizes are based on this
  /// value.
  static const _gridSystemSize = 8.0;

  static const _paddingDesktop = _gridSystemSize * 3;
  static const _paddingTablet = _gridSystemSize * 3;
  static const _paddingMobile = _gridSystemSize * 2;

  static const _marginDesktop = _gridSystemSize * 6;
  static const _marginTablet = _gridSystemSize * 6;
  static const _marginMobile = _gridSystemSize * 3;

  static double padding(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    switch (deviceType) {
      case DeviceScreenType.desktop:
        return _paddingDesktop;
      case DeviceScreenType.tablet:
        return _paddingTablet;
      case DeviceScreenType.mobile:
        return _paddingMobile;
      default:
        return _paddingDesktop;
    }
  }

  static double margin(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    switch (deviceType) {
      case DeviceScreenType.desktop:
        return _marginDesktop;
      case DeviceScreenType.tablet:
        return _marginTablet;
      case DeviceScreenType.mobile:
        return _marginMobile;
      default:
        return _marginDesktop;
    }
  }

  static const Color primaryColor = Colors.black;

  static const MaterialColor secondaryColor =
      MaterialColor(_secondaryPrimaryValue, <int, Color>{
    50: Color(0xFFF3FDF0),
    100: Color(0xFFE1FADB),
    200: Color(0xFFCDF7C3),
    300: Color(0xFFB8F3AA),
    400: Color(0xFFA9F198),
    500: Color(_secondaryPrimaryValue),
    600: Color(0xFF92EC7E),
    700: Color(0xFF88E973),
    800: Color(0xFF7EE769),
    900: Color(0xFF6CE256),
  });
  static const int _secondaryPrimaryValue = 0xFF9AEE86;

  static const MaterialColor secondaryAccentColor =
      MaterialColor(_secondaryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_secondaryAccentValue),
    400: Color(0xFFE4FFDF),
    700: Color(0xFFCEFFC5),
  });
  static const int _secondaryAccentValue = 0xFFFFFFFF;
}
