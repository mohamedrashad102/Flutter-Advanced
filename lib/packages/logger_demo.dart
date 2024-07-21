import 'package:logger/logger.dart';

final Logger _logger = Logger();

void logTrace(String message) => _logger.t(message);

void logError(String message) => _logger.e(message);

void logInfo(String message) => _logger.i(message);

void logWarning(String message) => _logger.w(message);

void logDebug(String message) => _logger.d(message);
