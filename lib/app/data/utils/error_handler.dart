import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shipora_1/app/models/base_response.dart';
import 'package:shipora_1/app/networking/dio_exception.dart';

Future<K?> handleResponse<K extends BaseResponse>(
  AsyncFunction<K> callback, [
  bool show = true,
]) async {
  try {
    final model = await callback();
    return model;
  } on DioException catch (e) {
    final message = DioExceptionHandler.fromDioError(e).errorMessage ?? "";
    if (show) {
      showSnackBar(message);
    }
    return null;
  }
}

void showSnackBar(
  String? message, {
  bool error = true,
}) {
  var color = Colors.black;
  if (error) {
    color = Colors.red;
  } else {
    color = Colors.green;
  }
  Get.showSnackbar(
    GetSnackBar(
      message: message,
      duration: const Duration(seconds: 2),
      backgroundColor: color,
      isDismissible: true,
    ),
  );
}

typedef AsyncFunction<T extends BaseResponse> = Future<T?> Function();
