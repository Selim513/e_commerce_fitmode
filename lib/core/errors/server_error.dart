import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerError extends Failure {
  ServerError(super.errMessage);

  // Factory constructor to handle DioException
  factory ServerError.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerError("Connection timeout with the server");
      case DioExceptionType.connectionError:
        return ServerError('Connection error with the server');
      case DioExceptionType.sendTimeout:
        return ServerError("Send timeout in connection with the server");
      case DioExceptionType.receiveTimeout:
        return ServerError("Receive timeout in connection with the server");
      case DioExceptionType.badResponse:
        // Handle bad response (e.g., 4xx, 5xx errors)
        int? statusCode = dioException.response?.statusCode;
        if (statusCode != null) {
          if (statusCode >= 500) {
            return ServerError("Server error with status code: $statusCode");
          } else if (statusCode >= 400) {
            return ServerError("Client error with status code: $statusCode");
          }
        }
        return ServerError("Received an invalid response");
      case DioExceptionType.cancel:
        return ServerError("Request to the server was cancelled");
      case DioExceptionType.unknown:
        return ServerError(
            "Unexpected error occurred: ${dioException.message}");
      default:
        return ServerError("An unknown error occurred");
    }
  }
}
