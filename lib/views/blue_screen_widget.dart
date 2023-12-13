import 'package:blue_screen/data/stop_code.dart';
import 'package:blue_screen/utils/font.dart';
import 'package:blue_screen/utils/size.dart';
import 'package:blue_screen/views/blue_screen_type.dart';
import 'package:flutter/material.dart';

import 'blue_screen_builder.dart';

part '../widgets/windows10.dart';
part '../widgets/windows11.dart';

final class BlueScreenWidget extends StatelessWidget {
  /// The type of the [BlueScreenWidget].
  final BlueScreenType type;

  /// Class for information provided to [ErrorWidget] callbacks.
  final FlutterErrorDetails details;

  /// If true, the [BlueScreenWidget] will be rebuilt
  /// when the progress is completed.
  /// 
  /// If it's used for [ErrorWidget.builder], it will be ignored.
  final bool rebuild;

  /// If true, the progress can be repeated.
  final bool repeatable;

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

  final StopCode? stopCode;

  final ImageProvider? image;

  /// The [period] must be a non-negative [Duration].
  final Duration period;

  /// The [duration] must be a non-negative [Duration].
  final Duration duration;

  /// The function invokes when the progress is completed.
  final void Function()? onCompleted;

  /// Creates a [BlueScreenWidget] with type [BlueScreenType.windows10].
  const BlueScreenWidget.withWindows10(
    this.details, {
    super.key,
    this.rebuild = false,
    this.repeatable = false,
    this.emoticon = ':(',
    this.url = 'https://www.windows.com/stopcode',
    this.fontFamily,
    this.textColor,
    this.backgroundColor,
    this.image,
    this.stopCode,
    this.period = const Duration(seconds: 1),
    this.duration = const Duration(seconds: 5),
    this.onCompleted,
  }) : type = BlueScreenType.windows10;

  /// Creates a [BlueScreenWidget] with type [BlueScreenType.windows11].
  const BlueScreenWidget.withWindows11(
    this.details, {
    super.key,
    this.rebuild = false,
    this.repeatable = false,
    this.emoticon = ':(',
    this.url = 'https://www.windows.com/stopcode',
    this.fontFamily,
    this.textColor,
    this.backgroundColor,
    this.image,
    this.stopCode,
    this.period = const Duration(seconds: 1),
    this.duration = const Duration(seconds: 5),
    this.onCompleted,
  }) : type = BlueScreenType.windows11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          switch (type) {
            case BlueScreenType.windows10:
              return _buildWithWindows10(
                context,
                details,
                rebuild: rebuild,
                repeatable: repeatable,
                textColor: textColor,
                backgroundColor: backgroundColor,
                url: url,
                emoticon: emoticon,
                fontFamily: fontFamily,
                image: image,
                stopCode: stopCode,
                period: period,
                duration: duration,
                onCompleted: onCompleted,
              );
            case BlueScreenType.windows11:
              return _buildWithWindows11(
                context,
                details,
                rebuild: rebuild,
                repeatable: repeatable,
                textColor: textColor,
                backgroundColor: backgroundColor,
                url: url,
                emoticon: emoticon,
                fontFamily: fontFamily,
                image: image,
                stopCode: stopCode,
                period: period,
                duration: duration,
                onCompleted: onCompleted,
              );
            default:
              return ErrorWidget(
                details.exception,
              );
          }
        },
      ),
    );
  }
}
