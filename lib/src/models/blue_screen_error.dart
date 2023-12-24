import '/src/exports/data.dart';
import '/src/exports/utils.dart';

/// The error that is displayed on the [BlueScreenWidget].
class BlueScreenError extends Error with Diagnosticable {
  /// The exception that caused the error.
  final Object exception;

  /// The reason of the error.
  final String? reason;

  /// The stop code of the error.
  final StopCode? stopCode;

  /// Creates an instance of [BlueScreenError].
  BlueScreenError(
    this.exception, {
    this.reason,
    this.stopCode,
  });

  /// Creates an instance of [BlueScreenError] with details.
  BlueScreenError.withDetails(
    FlutterErrorDetails details, {
    this.stopCode,
  })  : exception = details.exception,
        reason = details.library;

  /// Returns a short (one line) description of the problem that was detected.
  Object get summary {
    if (exception is FlutterErrorDetails) {
      return (exception as FlutterErrorDetails).summary;
    }
    return exception;
  }
}
