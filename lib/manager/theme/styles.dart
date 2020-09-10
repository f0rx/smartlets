import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:smartlets/utils/colors.dart';

part 'styles-adapter.dart';

const String LIGHT_THEME_ID = "Light";
const String DARK_THEME_ID = "Dark";

class AppTheme extends HiveObject {
  final String id;
  final Brightness _brightness;
  final Brightness _accentColorBrightness;
  final Color _primaryColor;
  final Color _buttonColor;
  final Color _indicatorColor;
  final Color _primaryColorDark;
  final Color _primaryColorLight;
  final InputDecorationTheme _textFieldTheme;
  final Color _toggleableActiveColor;
  final Color _accentColor;
  final Color _splashColor;
  final dynamic _splashFactory;
  final VisualDensity _visualDensity;
  final TextTheme _textTheme;

  AppTheme._({
    @required this.id,
    Brightness brightness,
    Brightness accentColorBrightness,
    Color primaryColor,
    Color buttonColor,
    Color indicatorColor,
    Color primaryColorDark,
    Color primaryColorLight,
    InputDecorationTheme inputTheme,
    Color toggleableActiveColor,
    Color accentColor,
    Color splashColor,
    dynamic splashFactory,
    VisualDensity visualDensity,
    TextTheme textTheme,
  })  : _brightness = brightness,
        _accentColorBrightness = accentColorBrightness,
        _primaryColor = primaryColor,
        _buttonColor = buttonColor,
        _indicatorColor = indicatorColor,
        _primaryColorDark = primaryColorDark,
        _primaryColorLight = primaryColorLight,
        _toggleableActiveColor = toggleableActiveColor,
        _textFieldTheme = inputTheme,
        _accentColor = accentColor,
        _splashColor = splashColor,
        _splashFactory = splashFactory,
        _visualDensity = visualDensity,
        _textTheme = textTheme;

  /// Light Theme Configurations
  static AppTheme light() {
    return AppTheme._(
      id: LIGHT_THEME_ID,
      brightness: Brightness.light,
      accentColorBrightness: Brightness.dark,
      primaryColor: AppColors.primaryColor,
      primaryColorDark: AppColors.secondaryColor.shade200,
      buttonColor: AppColors.primaryColor,
      indicatorColor: Colors.white,
      toggleableActiveColor: AppColors.secondaryColor,
      accentColor: AppColors.accentColor,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.accentColor, width: 1.5),
        ),
        hintStyle: TextStyle(color: Colors.grey),
        labelStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.transparent,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.5),
        ),
      ),
      textTheme: TextTheme()
        ..apply(
          displayColor: Colors.black87, // For headline 1 - 6
          bodyColor: Colors.black87, // For every other text style
        ),
    );
  }

  /// Dark Theme Configurations
  static AppTheme dark() {
    return AppTheme._(
      id: DARK_THEME_ID,
      brightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      primaryColor: AppColors.secondaryColor,
      primaryColorDark: AppColors.secondaryColor.shade800,
      toggleableActiveColor: AppColors.secondaryColor,
      primaryColorLight: AppColors.secondaryColor,
      buttonColor: AppColors.primaryColor,
      indicatorColor: Colors.white,
      accentColor: AppColors.accentColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.accentColor, width: 1.5),
        ),
        hintStyle: TextStyle(color: Colors.grey),
        labelStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.transparent,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.5),
        ),
      ),
      textTheme: TextTheme()
        ..apply(
          displayColor: Colors.white, // For headline 1 - 6
          bodyColor: Colors.white, // For every other text style
        ),
    );
  }

  ThemeData themeData() {
    return ThemeData(
      brightness: this._brightness,
      accentColorBrightness: this._accentColorBrightness,
      primaryColor: this._primaryColor,
      buttonColor: this._buttonColor,
      indicatorColor: this._indicatorColor,
      primaryColorDark: this._primaryColorDark,
      primaryColorLight: this._primaryColorLight,
      toggleableActiveColor: this._toggleableActiveColor,
      inputDecorationTheme: this._textFieldTheme,
      accentColor: this._accentColor,
      splashColor: this._splashColor,
      splashFactory: this._splashFactory,
      visualDensity: this._visualDensity,
      textTheme: this._textTheme,
    );
  }

  AppTheme copyWith({
    String id,
    Brightness brightness,
    Brightness accentColorBrightness,
    Color primaryColor,
    Color buttonColor,
    Color indicatorColor,
    Color primaryColorDark,
    Color primaryColorLight,
    Color toggleableActiveColor,
    Color accentColor,
    Color splashColor,
    InputDecorationTheme textFieldTheme,
    dynamic splashFactory,
    VisualDensity visualDensity,
    TextTheme textTheme,
  }) {
    return AppTheme._(
      id: id ?? this.id,
      brightness: brightness ?? this._brightness,
      accentColorBrightness: accentColorBrightness ?? this._accentColorBrightness,
      primaryColor: primaryColor ?? this._primaryColor,
      buttonColor: buttonColor ?? this._buttonColor,
      indicatorColor: indicatorColor ?? this._indicatorColor,
      primaryColorDark: primaryColorDark ?? this._primaryColorDark,
      primaryColorLight: primaryColorLight ?? this._primaryColorLight,
      inputTheme: textFieldTheme ?? this._textFieldTheme,
      toggleableActiveColor: toggleableActiveColor ?? this._toggleableActiveColor,
      accentColor: accentColor ?? this._accentColor,
      splashColor: splashColor ?? this._splashColor,
      splashFactory: splashFactory ?? this._splashFactory,
      visualDensity: visualDensity ?? this._visualDensity,
      textTheme: textTheme ?? this._textTheme,
    );
  }
}
