import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class S implements WidgetsLocalizations {
  const S();

  static S current;

  static const GeneratedLocalizationsDelegate delegate =
      GeneratedLocalizationsDelegate();

  static S of(BuildContext context) => Localizations.of<S>(context, S);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get Like => "Like";
  String get about => "About";
  String get actionCancel => "Cancel";
  String get actionConfirm => "Confirm";
  String get appName => "SunFlower";
  String get appUpdateActionDownloadAgain => "Download";
  String get appUpdateActionInstallApk => "Install";
  String get appUpdateActionUpdate => "Update";
  String get appUpdateCheckUpdate => "Check Update";
  String get appUpdateDoubleBackTips => "Press back again, cancel download";
  String get appUpdateDownloadCanceled => "Download canceled";
  String get appUpdateDownloadFailed => "Download failed";
  String get appUpdateDownloading => "Downloading...";
  String get appUpdateLeastVersion => "Least version now ";
  String get appUpdateReDownloadContent =>
      "It has been detected that it has been downloaded, whether it is installed?";
  String get appUpdateUpdate => "Version Update";
  String get article_tag_top => "Top";
  String get autoBySystem => "Auto";
  String get clear => "Clear";
  String get close => "Close";
  String get coin => "Coin";
  String get collectionRemove => "Remove";
  String get darkMode => "Dark Mode";
  String get favourites => "Favorites";
  String get feedback => "FeedBack";
  String get fieldNotNull => "not empty";
  String get fontKuaiLe => "ZCOOL KuaiLe";
  String get githubIssue => "Can't find mail app,please github issues";
  String get loadFailed => "Load failed,retry later";
  String get logout => "Sign Out";
  String get myFavourites => "My favourites";
  String get needLogin => "Go to Sign In";
  String get noAccount => "No Account ? ";
  String get openBrowser => "Open Browser";
  String get password => "Please input Password";
  String get rate => "Rate";
  String get rePassword => "Confirm Password";
  String get refresh => "Refresh";
  String get refreshTwoLevel => "release to enter second floor";
  String get retry => "Retry";
  String get searchHistory => "History";
  String get searchHot => "Hot";
  String get searchSuggest => "Track,album,artist,podcast";
  String get searchShake => "Shake";
  String get setting => "Setting";
  String get settingFont => "System Font";
  String get settingLanguage => "Language";
  String get share => "Share";
  String get signIn => "Sign In";
  String get signIn3thd => "More";
  String get welcome => "Welcome";
  String get signUp => "Sign Up";
  String get splashSkip => "Skip";
  String get tabSearch => "Search";
  String get searchResult => "Search Result:";
  String get tabMusic => "Music";
  String get tabFavorite => "Favorite";
  String get tabUser => "Me";
  String get theme => "Theme";
  String get toSignIn => "Sign In";
  String get albums => "Albums";
  String get viewAll => "View All";
  String get forYou => "For you";
  String get toSignUp => "Sign Up";
  String get twoPwdDifferent => "The two passwords differ";
  String get unLike => "UnLike";
  String get userName => "Please input Username";
  String get viewStateButtonLogin => "Sign In";
  String get viewStateButtonRefresh => "Refresh";
  String get viewStateButtonRetry => "Retry";
  String get viewStateMessageEmpty => "Nothing Found";
  String get viewStateMessageError => "Load Failed";
  String get viewStateMessageNetworkError => "Load Failed,Check network ";
  String get viewStateMessageUnAuth => "Not sign in yet";
  String get wechatAccount => "Wechat";
  String get nonPlaylist => "None Playlist";
  String get nonFavorite => "None Favorite";
  String get searchLoading => "Searching...";
  String appUpdateFoundNewVersion(String version) => "New version $version";
}

class $en extends S {
  const $en();
}

class $vi extends S {
  const $vi();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get favourites => "Sưu tầm";
  @override
  String get appUpdateLeastVersion => "Đây là phiên bản mới nhất";
  @override
  String get twoPwdDifferent => "Mật khẩu không trùng khớp";
  @override
  String get viewStateButtonRetry => "Thử lại";
  @override
  String get about => "Chúng tôi";
  @override
  String get unLike => "Bỏ thích";
  @override
  String get signUp => "Đăng ký";
  @override
  String get viewStateMessageEmpty => "Tin nhắn trống";
  @override
  String get appUpdateActionInstallApk => "Cài đặt trực tiếp";
  @override
  String get viewStateMessageUnAuth => "Chưa đăng nhập";
  @override
  String get setting => "Cài đặt";
  @override
  String get settingFont => "Kiểu chữ";
  @override
  String get feedback => "Phản hồi";
  @override
  String get logout => "Đăng xuất";
  @override
  String get password => "Vui lòng nhập mật khẩu";
  @override
  String get searchShake => "Thay đổi";
  @override
  String get Like => "Thích";
  @override
  String get viewStateMessageNetworkError =>
      "Kết nối mạng không ổn định, vui lòng kiểm tra mạng hoặc thử lại sau";
  @override
  String get appUpdateActionDownloadAgain => "Thử tải lại";
  @override
  String get autoBySystem => "Hệ thống";
  @override
  String get viewStateButtonRefresh => "Làm mới";
  @override
  String get appUpdateDoubleBackTips =>
      "Nhấp vào nút quay lại để hủy tải xuống";
  @override
  String get loadFailed => "Tải không thành công, vui lòng thử lại sau";
  @override
  String get refreshTwoLevel => "Chào mừng";
  @override
  String get article_tag_top => "Mới nhất";
  @override
  String get appUpdateDownloadFailed => "Tải xuống không thành công";
  @override
  String get appUpdateReDownloadContent =>
      "Phiên bản này đã được tải xuống cục bộ, bạn có muốn cài đặt trực tiếp không?";
  @override
  String get noAccount => "Chưa có tài khoản? ";
  @override
  String get openBrowser => "Mở trình duyệt";
  @override
  String get appUpdateActionUpdate => "Cập nhật";
  @override
  String get coin => "Tiền";
  @override
  String get splashSkip => "Tiếp theo";
  @override
  String get collectionRemove => "Xóa khỏi mục yêu thích";
  @override
  String get actionConfirm => "Xác nhận";
  @override
  String get fontKuaiLe => "Phông chữ";
  @override
  String get appUpdateCheckUpdate => "Kiểm tra cập nhật";
  @override
  String get settingLanguage => "Cài đặt ngôn ngữ";
  @override
  String get myFavourites => "Bộ sưu tập của tôi";
  @override
  String get signIn3thd => "Đăng nhập";
  @override
  String get welcome => "Chào mừng đến với SunFlower";
  @override
  String get viewStateMessageError => "Lỗi không thể tải";
  @override
  String get rate => "Đánh giá";
  @override
  String get actionCancel => "Hủy bỏ";
  @override
  String get theme => "Chủ đề";
  @override
  String get share => "Chia sẻ";
  @override
  String get appUpdateUpdate => "Cập nhật phiên bản mới";
  @override
  String get fieldNotNull => "Không được để trống";
  @override
  String get close => "Đóng";
  @override
  String get retry => "Thử lại";
  @override
  String get wechatAccount => "Cộng đồng";
  @override
  String get toSignUp => "Đăng ký";
  @override
  String get appUpdateDownloading => "Đang tải xuống, vui lòng đợi ...";
  @override
  String get appName => "SunFlower";
  @override
  String get tabUser => "Cá nhân";
  @override
  String get clear => "Trống";
  @override
  String get needLogin => "Vui lòng đăng nhập trước";
  @override
  String get refresh => "Tải lại";
  @override
  String get toSignIn => "Đăng nhập";
  @override
  String get albums => "Danh sách bài hát";
  @override
  String get viewAll => "Xem tất cả";
  @override
  String get forYou => "Cho bạn";
  @override
  String get userName => "Hãy điền tên đăng nhập";
  @override
  String get appUpdateDownloadCanceled => "Đã hủy tải xuống";
  @override
  String get tabSearch => "Tìm kiếm";
  @override
  String get searchResult => "Kết quả tìm kiếm: ";
  @override
  String get tabMusic => "Tải xuống";
  @override
  String get tabFavorite => "Yêu thích";
  @override
  String get rePassword => "Xác nhận mật khẩu";
  @override
  String get signIn => "Đăng nhập";
  @override
  String get githubIssue => "Không tìm thấy ứng dụng, gửi sự cố lên hệ thống";
  @override
  String get viewStateButtonLogin => "Đăng nhập";
  @override
  String get searchHot => "Tìm kiếm phổ biến";
  @override
  String get searchSuggest => "Tên bài hát";
  @override
  String get darkMode => "Chế độ ban đêm";
  @override
  String get searchHistory => "Lịch sử tìm kiếm";
  @override
  String get nonPlaylist => "Danh sách nhạc trống";
  @override
  String get nonFavorite => "Danh sách yêu thích trống";
  @override
  String get searchLoading => "Đang tải danh sách bài hát...";
  @override
  String appUpdateFoundNewVersion(String version) =>
      "Đã tìm thấy phiên bản $version mới,bạn có muốn cập nhật không?";
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("en", ""),
      Locale("zh", "CN"),
    ];
  }

  LocaleListResolutionCallback listResolution(
      {Locale fallback, bool withCountry = true}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported, withCountry);
      }
    };
  }

  LocaleResolutionCallback resolution(
      {Locale fallback, bool withCountry = true}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported, withCountry);
    };
  }

  @override
  Future<S> load(Locale locale) {
    final String lang = getLang(locale);
    if (lang != null) {
      switch (lang) {
        case "en":
          S.current = const $en();
          return SynchronousFuture<S>(S.current);
        case "zh_CN":
          S.current = const $vi();
          return SynchronousFuture<S>(S.current);
        default:
        // NO-OP.
      }
    }
    S.current = const S();
    return SynchronousFuture<S>(S.current);
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale, true);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported,
      bool withCountry) {
    if (locale == null || !_isSupported(locale, withCountry)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale, bool withCountry) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        // Language must always match both locales.
        if (supportedLocale.languageCode != locale.languageCode) {
          continue;
        }

        // If country code matches, return this locale.
        if (supportedLocale.countryCode == locale.countryCode) {
          return true;
        }

        // If no country requirement is requested, check if this locale has no country.
        if (true != withCountry &&
            (supportedLocale.countryCode == null ||
                supportedLocale.countryCode.isEmpty)) {
          return true;
        }
      }
    }
    return false;
  }
}

String getLang(Locale l) => l == null
    ? null
    : l.countryCode != null && l.countryCode.isEmpty
        ? l.languageCode
        : l.toString();
