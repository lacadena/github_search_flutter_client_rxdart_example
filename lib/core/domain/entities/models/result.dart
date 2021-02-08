enum Status {
  success,
  loading,
  error,
}
class Result<T> {
  Status status;
  T data;
  CustomError error;
  Map<String, String> errors;
  Result.loading(this.data) {
    status = Status.loading;
  }
  Result.success(this.data) {
    status = Status.success;
  }
  Result.error({String message, int code = 0, CustomError error}) {
    status = Status.error;
    this.error = error ??
        CustomError(
          message: message,
          code: code,
        );
    errors = {};
  }
  Result.errors(this.errors) {
    status = Status.error;
  }
}

class CustomError {
  final int code;
  final String message;
  const CustomError({
    this.code = 0,
    this.message,
  });
}