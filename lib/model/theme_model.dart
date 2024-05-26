import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/config/storage_manager.dart';
import 'package:flutter_music_app/generated/language.dart';
import 'package:flutter_music_app/ui/helper/theme_helper.dart';

//const Color(0xFF5394FF),

class ThemeModel with ChangeNotifier {
  static const kThemeColorIndex = 'kThemeColorIndex';
  static const kThemeUserDarkMode = 'kThemeUserDarkMode';
  static const kFontIndex = 'kFontIndex';

  static const fontValueList = ['system', 'kuaile'];

  /// Chế độ sáng và tối do người dùng chọn
  bool _userDarkMode;

  /// Màu chủ đề hiện tại
  MaterialColor _themeColor;

  /// Font hiện tại
  int _fontIndex;

  ThemeModel() {
    /// Thiết lập chế độ sáng và tối do người dùng chọn
    _userDarkMode =
        StorageManager.sharedPreferences.getBool(kThemeUserDarkMode) ?? false;

    /// Thiết lập màu nền do người dùng chọn
    _themeColor = Colors.primaries[
        StorageManager.sharedPreferences.getInt(kThemeColorIndex) ?? 5];

    /// Thiết lập ngôn ngữ do người dùng chọn
    _fontIndex = StorageManager.sharedPreferences.getInt(kFontIndex) ?? 0;
  }

  int get fontIndex => _fontIndex;

  /// Chuyển đổi màu sắc on click
  ///
  /// Độ sáng không bị thay đổi nếu không vượt qua [brightness], giống như màu sắc
  void switchTheme({bool userDarkMode, MaterialColor color}) {
    _userDarkMode = userDarkMode ?? _userDarkMode;
    _themeColor = color ?? _themeColor;
    notifyListeners();
    saveTheme2Storage(_userDarkMode, _themeColor);
  }

  /// Màu sắc ngẫu nhiên
  ///
  /// Chỉ định áp dụng với cả chế độ sáng và tối
  void switchRandomTheme({Brightness brightness}) {
    int colorIndex = Random().nextInt(Colors.primaries.length - 1);
    switchTheme(
      userDarkMode: Random().nextBool(),
      color: Colors.primaries[colorIndex],
    );
  }

  /// Đổi ngôn ngữ
  switchFont(int index) {
    _fontIndex = index;
    switchTheme();
    saveFontIndex(index);
  }

  /// Tạo chủ đề tương ứng theo ánh sáng và bóng râm và màu sắc của chủ đề
  /// [dark] Chế độ tối của hệ thống
  themeData({bool platformDarkMode: false}) {
    var isDark = platformDarkMode || _userDarkMode;
    Brightness brightness = isDark ? Brightness.dark : Brightness.light;

    var themeColor = _themeColor;
    var accentColor = isDark ? themeColor[800] : _themeColor;
    var scaffoldBackgroundColor = isDark ? Color(0xFF373331) : Colors.white;
    var themeData = ThemeData(
        brightness: brightness,
        // Màu chủ đề thuộc hệ màu sáng hay hệ màu tối (ví dụ: tối, màu của văn bản AppBarTitle và văn bản trên thanh trạng thái là màu trắng, nếu không thì là màu đen)
        // Mục đích của việc đặt dark ở đây là đặt giá trị mặc định của màu chữ của appBar thành màu trắng bất kể App sáng hay tối.
        // Sử dụng AnnotatedRegion <SystemUiOverlayStyle> để điều chỉnh màu thanh trạng thái phản hồi
        primaryColorBrightness: Brightness.dark,
        accentColorBrightness: Brightness.dark,
        primarySwatch: themeColor,
        accentColor: accentColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        fontFamily: fontValueList[fontIndex]);

    themeData = themeData.copyWith(
      brightness: brightness,
      accentColor: accentColor,
      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: themeColor,
        brightness: brightness,
      ),

      appBarTheme: themeData.appBarTheme.copyWith(elevation: 0),
      splashColor: themeColor.withAlpha(50),
      hintColor: themeData.hintColor.withAlpha(90),
      errorColor: Colors.red,
      cursorColor: accentColor,
      textTheme: themeData.textTheme.copyWith(
          subhead: themeData.textTheme.subhead
              .copyWith(textBaseline: TextBaseline.alphabetic)),
      textSelectionColor: accentColor.withAlpha(60),
      textSelectionHandleColor: accentColor.withAlpha(60),
      toggleableActiveColor: accentColor,
      chipTheme: themeData.chipTheme.copyWith(
        pressElevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 10),
        labelStyle: themeData.textTheme.caption,
        backgroundColor: themeData.chipTheme.backgroundColor.withOpacity(0.1),
      ),
//          textTheme: CupertinoTextThemeData(brightness: Brightness.light)
      inputDecorationTheme: ThemeHelper.inputDecorationTheme(themeData),
    );
    return themeData;
  }

  /// shared preferences
  saveTheme2Storage(bool userDarkMode, MaterialColor themeColor) async {
    var index = Colors.primaries.indexOf(themeColor);
    await Future.wait([
      StorageManager.sharedPreferences
          .setBool(kThemeUserDarkMode, userDarkMode),
      StorageManager.sharedPreferences.setInt(kThemeColorIndex, index)
    ]);
  }

  /// Lấy ngôn ngữ theo switch
  static String fontName(index, context) {
    switch (index) {
      case 0:
        return S.of(context).autoBySystem;
      case 1:
        return S.of(context).fontKuaiLe;
      default:
        return '';
    }
  }

  /// Lưu ngôn ngữ
  static saveFontIndex(int index) async {
    await StorageManager.sharedPreferences.setInt(kFontIndex, index);
  }
}
