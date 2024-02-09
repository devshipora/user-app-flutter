import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shipora_1/app/models/base_response.dart';
import 'package:shipora_1/app/models/forgot_password_otp_respponse.dart';
import 'package:shipora_1/app/models/login_response.dart';
import 'package:shipora_1/app/networking/api_urls.dart';
import 'package:shipora_1/app/networking/dio_exception.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiUrl.BASE_URL)
abstract class ApiClient {
  factory ApiClient({String? baseUrl}) {
    final dio = Dio();

    dio.interceptors.add(
      LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        logPrint: (object) => log(object.toString()),
      ),
    );

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers["Content-Type"] = "application/x-www-form-urlencoded";
        return handler.next(options);
      },
      //
      onError: (e, ErrorInterceptorHandler handler) {
        DioCustomError(
          DioExceptionHandler.fromDioError(e).errorMessage ?? "",
          e,
        );

        DioExceptionHandler.fromDioError(e);
        handler.next(e);
        // return error;
      },
    ));

    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @POST(ApiUrl.LOGIN)
  Future<LoginResponse> login(
    @Field("mobilenumber") String mobilenumber,
    @Field("password") String password,
    @Field("country_code") String countrycode,
  );

  @POST(ApiUrl.SIGNUP)
  Future<BaseResponse> signup(
    @Field("mobilenumber") String mobilenumber,
    @Field("password") String password,
    @Field("email") String email,
    @Field("confirm_password") String confirmPassword,
    @Field("first_name") String firstName,
    @Field("last_name") String lastName,
    @Field("country_code") String countrycode,
  );

  @POST(ApiUrl.VERIFY_OTP)
  Future<BaseResponse> verifyOtp(
    @Field("mobilenumber") String mobilenumber,
    @Field("otp") String otp,
  );

  @POST(ApiUrl.FORGET_PASSWORD)
  Future<BaseResponse> forgetPassword(
    @Field("mobilenumber") String mobilenumber,
    @Field("country_code") String countrycode,
  );

  @POST(ApiUrl.FORGOT_PASSWORD_OTP)
  Future<ForgotPasswordOtpResponse> forgotPasswordOtp(
    @Field("mobilenumber") String mobilenumber,
    @Field("otp") String otp,
  );

  @POST(ApiUrl.RESET_PASSWORD)
  Future<BaseResponse> resetPassword(
    @Field("mobilenumber") String mobilenumber,
    @Field("password") String password,
    @Field("confirm_password") String confirmPassword,
    @Field("update_token") String countrycode,
  );
}
