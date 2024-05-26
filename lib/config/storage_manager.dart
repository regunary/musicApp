import 'dart:io';

import 'package:localstorage/localstorage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageManager {
  /// Cấu hình chủ đề
  static SharedPreferences sharedPreferences;

  /// Cấu hình cookie
  static Directory temporaryDirectory;

  /// Lưu trữ cục bộ
  static LocalStorage localStorage;

  /// Khởi tạo dữ liệu cần thiết
  ///
  /// Vì là thao tác đồng bộ nên sẽ gây ra hiện tượng chặn, nên giảm dung lượng lưu trữ càng nhiều càng tốt
  static init() async {
    // async Hoạt động không đồng bộ
    // sync Hoạt động đồng bộ
    temporaryDirectory = await getTemporaryDirectory();
    sharedPreferences = await SharedPreferences.getInstance();
    localStorage = LocalStorage('LocalStorage');
    await localStorage.ready;
  }
}
