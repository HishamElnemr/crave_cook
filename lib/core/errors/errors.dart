import 'package:dio/dio.dart';

abstract class Errors {
  final String errorMessage;
  const Errors(this.errorMessage);
}

class ServerFailur extends Errors {
  ServerFailur(super.errorMessage);
  factory ServerFailur.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailur('Connection Timeout');

      case DioExceptionType.sendTimeout:
        return ServerFailur('Send Timeout');

      case DioExceptionType.receiveTimeout:
        return ServerFailur('Receive Timeout');

      case DioExceptionType.badCertificate:
        return ServerFailur('Bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailur.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailur('Request Cancelled');

      case DioExceptionType.connectionError:
        return ServerFailur('Connection Error');

      case DioExceptionType.unknown:
        return ServerFailur('Unknown Error');
    }
  }
  factory ServerFailur.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailur(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailur('Not Found , Please try again later');
    } else if (statusCode == 500) {
      return ServerFailur('Internal Server Error , Please try again later');
    } else {
      return ServerFailur('Unknown Error , Please try again later');
    }
  }
}
