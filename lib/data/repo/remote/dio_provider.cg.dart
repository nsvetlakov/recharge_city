import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app_for_red/core/logger/inapp_logger.dart';

part 'gen/dio_provider.cg.g.dart';

/// Dio провайдер для HTTP деятельности
@Riverpod(keepAlive: true)
Dio dio(Ref ref, String baseUrl) {
  final options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 10),
    sendTimeout: Duration(seconds: 10),
  );
  final dioInit = Dio(options);
  InAppLogger.instance.logInfoMessage('Dio', 'Init ✅ base url: $baseUrl');
  return dioInit;
}
