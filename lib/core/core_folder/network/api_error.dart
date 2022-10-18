// ignore_for_file: unused_catch_stack

import 'package:dio/dio.dart';

/// Helper class for converting [DioError] into readable formats
class ApiError {
  int? errorType = 0;
  ApiErrorModel? apiErrorModel;

  // final logger = getLogger('ApiError');

  /// description of error generated this is similar to convention [Error.message]
  String? errorDescription;

  ApiError({this.errorDescription});

  ApiError.fromDio(Object dioError) {
    _handleError(dioError);
  }

  /// sets value of class properties from [error]
  void _handleError(Object error) {
    if (error is DioError) {
      DioError dioError = error; // as DioError;
      // logger.d(dioError.response?.data);
      switch (dioError.type) {
        case DioErrorType.cancel:
          errorDescription = "Request to server was cancelled";
          break;
        case DioErrorType.connectTimeout:
          errorDescription =
              "Connection timeout with server, please try again later";
          break;
        case DioErrorType.other:
          errorDescription =
              "Connection to server failed due to internet connection, please check and try again";
          break;
        case DioErrorType.receiveTimeout:
          errorDescription =
              "Receive timeout in connection with server, please try again later.";
          break;
        case DioErrorType.response:
          errorType = dioError.response?.statusCode;
          if (dioError.response?.statusCode == 401) {
            errorDescription =
                "Your session has timed out, please login again to proceed";
          } else if (dioError.response?.statusCode == 400 ||
              dioError.response?.statusCode == 422 ||
              dioError.response?.statusCode == 403 ||
              dioError.response?.statusCode == 404) {
            apiErrorModel = ApiErrorModel.fromJson(dioError.response?.data);

            errorDescription = apiErrorModel?.msg ??
                extractDescriptionFromResponse(error.response);
          } else if (dioError.response?.statusCode == 500) {
            errorDescription =
                'Something went wrong while processing your request';
          } else {
            errorDescription =
                "Oops! we could'nt make connections, please try again";
          }
          break;
        case DioErrorType.sendTimeout:
          errorDescription =
              "Connection to server failed due to internet connection, please check and try again";
          break;
      }
    } else {
      errorDescription = "Oops an error occurred, we are fixing it";
    }
  }

  String extractDescriptionFromResponse(Response<dynamic>? response) {
    String message = "";
    try {
      if (response?.data != null && response?.data["message"] != null) {
        message = response?.data["message"];
      } else {
        message = response?.statusMessage ?? '';
      }
    } catch (error, stackTrace) {
      message = response?.statusMessage ?? error.toString();
    }
    return message;
  }

  @override
  String toString() => '$errorDescription';
}

class ApiErrorModel {
  int? code;
  String? msg;
  bool? success;
  String? details;

  ApiErrorModel({this.code, this.msg, this.success, this.details});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => ApiErrorModel(
      code: json["code"],
      msg: json["msg"] ?? json["message"],
      success: json["success"],
      details: json["details"]);
}
