import 'dart:async';
import 'dart:developer';

import '/src/exports/data.dart';
import '/src/exports/utils.dart';
import '/src/exports/views.dart';

part '../widgets/safe_mode.dart';
part '../widgets/windows_10.dart';
part '../widgets/windows_11.dart';
part '../widgets/windows_server.dart';

/// A BlueScreen widget replaces the default [ErrorWidget] used for Flutter apps.
final class BlueScreenWidget extends StatelessWidget {
  /// Class for information provided to [ErrorWidget] callbacks.
  final Object exception;

  /// The system used for display on [BlueScreenWidget].
  final OperatingSystem? system;

  /// The language used for display on [BlueScreenWidget].
  final DisplayLanguage language;

  /// The width of the [BlueScreenWidget].
  final double? width;

  /// The height of the [BlueScreenWidget].
  final double? height;

  /// If true, the [BlueScreenWidget] will be rebuilt
  /// when the progress is completed.
  ///
  /// If it's used for [ErrorWidget.builder], it will be ignored.
  final bool rebuild;

  /// If true, the progress can be repeated.
  final bool repeatable;

  /// If [scrollable] is `true`,
  /// the [exception] will be scrollable if it's too long.
  ///
  /// If [stopCode] is not `null`, it will be ignored.
  final bool scrollable;

  /// The color to use when painting the text.
  final Color? textColor;

  /// The color to paint behind the [BlueScreenWidget].
  final Color? backgroundColor;

  /// The url used to visit for more information.
  final String url;

  /// The emoticon used on header of [BlueScreenWidget].
  final String emoticon;

  /// The font family used to paint the text.
  final String? fontFamily;

  /// The stop code used to call a support person.
  final StopCode? stopCode;

  /// The image used on header of [BlueScreenWidget].
  ///
  /// Typically a logo or a QR code. If `null`, it is invisible.
  final ImageProvider? image;

  /// The update period of progress.
  ///
  /// The [period] must be a non-negative [Duration].
  final Duration period;

  /// The complete duration of the progress.
  ///
  /// The [duration] must be a non-negative [Duration].
  final Duration duration;

  /// The function invokes when the progress is completed.
  final void Function()? onCompleted;

  /// Creates a default [BlueScreenWidget] that displays the given [exception].
  const BlueScreenWidget(
    this.exception, {
    super.key,
    this.width,
    this.height,
    this.textColor,
    this.backgroundColor,
    this.fontFamily,
  })  : system = null,
        rebuild = false,
        repeatable = false,
        scrollable = false,
        language = DisplayLanguage.en,
        url = '',
        emoticon = '',
        image = null,
        stopCode = null,
        period = Duration.zero,
        duration = Duration.zero,
        onCompleted = null;

  /// Creates a [BlueScreenWidget] with [OperatingSystem.windows10].
  const BlueScreenWidget.withWindows10(
    this.exception, {
    super.key,
    this.width,
    this.height,
    this.rebuild = false,
    this.repeatable = false,
    this.url = StopCode.url,
    this.emoticon = StopCode.emoticon,
    this.fontFamily,
    this.textColor,
    this.backgroundColor,
    this.stopCode,
    this.image = StopCode.image,
    this.language = DisplayLanguage.en,
    this.period = const Duration(seconds: 1),
    this.duration = const Duration(seconds: 5),
    this.onCompleted,
  })  : system = OperatingSystem.windows10,
        scrollable = false;

  /// Creates a [BlueScreenWidget] with [OperatingSystem.windows11].
  const BlueScreenWidget.withWindows11(
    this.exception, {
    super.key,
    this.width,
    this.height,
    this.rebuild = false,
    this.repeatable = false,
    this.url = StopCode.url,
    this.emoticon = StopCode.emoticon,
    this.fontFamily,
    this.textColor,
    this.backgroundColor,
    this.stopCode,
    this.image = StopCode.image,
    this.language = DisplayLanguage.en,
    this.period = const Duration(seconds: 1),
    this.duration = const Duration(seconds: 5),
    this.onCompleted,
  })  : system = OperatingSystem.windows11,
        scrollable = false;

  /// Creates a [BlueScreenWidget] with [OperatingSystem.windowsServer].
  const BlueScreenWidget.withWindowsServer(
    this.exception, {
    super.key,
    this.width,
    this.height,
    this.rebuild = false,
    this.repeatable = false,
    this.scrollable = false,
    this.fontFamily,
    this.textColor,
    this.backgroundColor,
    this.stopCode,
    this.language = DisplayLanguage.en,
    this.period = const Duration(seconds: 1),
    this.duration = const Duration(seconds: 5),
    this.onCompleted,
  })  : system = OperatingSystem.windowsServer,
        url = '',
        emoticon = '',
        image = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          switch (system) {
            case OperatingSystem.windows10:
              return _buildWithWindows10(
                context,
                exception,
                width: width,
                height: height,
                rebuild: rebuild,
                repeatable: repeatable,
                textColor: textColor,
                backgroundColor: backgroundColor,
                url: url,
                emoticon: emoticon,
                fontFamily: fontFamily,
                image: image,
                language: language,
                stopCode: stopCode,
                period: period,
                duration: duration,
                onCompleted: onCompleted,
                system: OperatingSystem.windows10,
              );
            case OperatingSystem.windows11:
              return _buildWithWindows11(
                context,
                exception,
                width: width,
                height: height,
                rebuild: rebuild,
                repeatable: repeatable,
                textColor: textColor,
                backgroundColor: backgroundColor,
                url: url,
                emoticon: emoticon,
                fontFamily: fontFamily,
                image: image,
                language: language,
                stopCode: stopCode,
                period: period,
                duration: duration,
                onCompleted: onCompleted,
                system: OperatingSystem.windows11,
              );
            case OperatingSystem.windowsServer:
              return _buildWithWindowsServer(
                context,
                exception,
                width: width,
                height: height,
                rebuild: rebuild,
                repeatable: repeatable,
                scrollable: scrollable,
                textColor: textColor,
                backgroundColor: backgroundColor,
                fontFamily: fontFamily,
                language: language,
                stopCode: stopCode,
                period: period,
                duration: duration,
                onCompleted: onCompleted,
                system: OperatingSystem.windowsServer,
              );
            default:
              return _buildSafeMode(
                context,
                exception,
                width: width,
                height: height,
                textColor: textColor,
                backgroundColor: backgroundColor,
                fontFamily: fontFamily,
              );
          }
        },
      ),
    );
  }
}
