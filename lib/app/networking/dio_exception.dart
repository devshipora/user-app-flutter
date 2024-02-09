import 'dart:core';

import 'package:dio/dio.dart';

class DioExceptionHandler implements Exception {
  String? errorMessage;

  DioExceptionHandler.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorMessage = 'Request to the server was cancelled.';
        break;
      case DioExceptionType.connectionTimeout:
        errorMessage = 'Connection timed out.';
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = 'Receiving timeout occurred.';
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = 'Request send timeout.';
        break;
      case DioExceptionType.badResponse:
        errorMessage = _handleStatusCode(dioError.response?.statusCode);
        break;
      case DioExceptionType.unknown:
        if ((dioError.message ?? "").contains('SocketException')) {
          errorMessage = 'No Internet.';
          break;
        }
        errorMessage = 'Unexpected error occurred.';
        break;
      default:
        errorMessage = 'Something went wrong';
        break;
    }
  }

  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return "Bad Request";
      case 401:
        return 'Authentication failed.';
      case 403:
        return 'The authenticated user is not allowed to access the specified API endpoint.';
      case 404:
        return "Not Found";
      case 409:
        return "Error due to a conflict";
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid.';
      case 422:
        return 'Data validation failed.';
      case 429:
        return 'Too many requests.';
      case 500:
        return 'Internal server error.';
      default:
        return 'Oops something went wrong!';
    }
  }

  @override
  String toString() => errorMessage ?? "";
}

class DioCustomError implements DioExceptionHandler {
  DioCustomError(String message, DioError error) {
    requestOptions = error.requestOptions;
    // ignore: prefer_initializing_formals
    this.message = message;
    type = error.type;
    this.error = error.error;
    stackTrace = error.stackTrace;
    response = error.response;
  }

  setMessage(String message) {
    this.message = message;
  }

  @override
  String message = '';

  @override
  String toString() => message;

  @override
  // ignore: prefer_typing_uninitialized_variables
  var error;

  @override
  late RequestOptions requestOptions;

  @override
  Response? response;

  @override
  StackTrace? stackTrace;

  @override
  late DioErrorType type;

  @override
  String? errorMessage;

  @override
  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return "Bad Request";
      case 401:
        return 'Authentication failed.';
      case 403:
        return 'The authenticated user is not allowed to access the specified API endpoint.';
      case 404:
        return "Not Found";
      case 409:
        return "Error due to a conflict";
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid.';
      case 422:
        return 'Data validation failed.';
      case 429:
        return 'Too many requests.';
      case 500:
        return 'Internal server error.';
      default:
        return 'Oops something went wrong!';
    }
  }
}
