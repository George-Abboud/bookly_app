import 'package:bookly_app/core/errors/response_code.dart';
import 'package:bookly_app/core/errors/response_message.dart';
import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    return _handleError(dioException);
  }
  
}

ServerFailure _handleError(DioException dioException) {
  switch (dioException.type) {
    case DioExceptionType.connectionTimeout:
      return ServerFailure(errMessage: ResponseMessage.connectTimeout);
    case DioExceptionType.sendTimeout:
      return ServerFailure(errMessage: ResponseMessage.sendTimeout);
    case DioExceptionType.receiveTimeout:
      return ServerFailure(errMessage: ResponseMessage.receiveTimeout);
    case DioExceptionType.badCertificate:
      return ServerFailure(errMessage: ResponseMessage.badCertificate);
    case DioExceptionType.badResponse:
      return _handleBadResponseError(dioException,dioException.response!.statusCode!);
    case DioExceptionType.cancel:
      return ServerFailure(errMessage: ResponseMessage.cancel);
    case DioExceptionType.connectionError:
      return ServerFailure(errMessage: ResponseMessage.connectionError);
    case DioExceptionType.unknown:
      return ServerFailure(errMessage: ResponseMessage.unknownError);
    default:
      return ServerFailure(errMessage: ResponseMessage.unknownError);
  }
}

ServerFailure _handleBadResponseError(DioException dioException,int statusCode) {
  switch (statusCode) {
    case ResponseCode.badRequest:
      return ServerFailure(errMessage: ResponseMessage.badRequest);
    case ResponseCode.unauthorised:
      return ServerFailure(errMessage: ResponseMessage.unauthorised);

    case ResponseCode.forbidden:
      return ServerFailure(errMessage: ResponseMessage.forbidden);
    case ResponseCode.notFound:
      return ServerFailure(errMessage: ResponseMessage.notFound);
    case ResponseCode.conflict:
      return ServerFailure(errMessage: ResponseMessage.conflict);
    case ResponseCode.internalServerError:
      return ServerFailure(errMessage: ResponseMessage.internalServerError);
    default:
      return ServerFailure(errMessage: "status code $statusCode");
  }
}
