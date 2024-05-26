/// Loại trạng thái trang
enum ViewState {
  idle,
  busy, //Đang tải
  empty, //Không có dữ liệu
  error, //Không tải được
  unAuthorized, //Chưa đăng nhập
}

/// Loại lỗi
enum ErrorType {
  defaultError,
  networkError,
}

class ViewStateError {
  ErrorType errorType;
  String message;
  String errorMessage;

  ViewStateError(this.errorType, {this.message, this.errorMessage}) {
    errorType ??= ErrorType.defaultError;
    message ??= errorMessage;
  }

  /// phương thức get kiểm tra loại lỗi
  get isNetworkError => errorType == ErrorType.networkError;

  @override
  String toString() {
    return 'ViewStateError{errorType: $errorType, message: $message, errorMessage: $errorMessage}';
  }
}

//enum ConnectivityStatus { WiFi, Cellular, Offline }
