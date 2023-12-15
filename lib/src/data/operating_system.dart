import '../exports/data.dart';
import '../exports/utils.dart';

/// The operating system used for builds [BlueScreenWidget].
enum OperatingSystem {
  windows10(
    fontFamily: FontFamily.segoe,
    textColor: Colors.white,
    backgroundColor: Colors.blue,
  ),

  windows11(
    fontFamily: FontFamily.segoe,
    textColor: Colors.white,
    backgroundColor: Colors.black,
  );

  final String? fontFamily;
  final Color textColor;
  final Color backgroundColor;

  const OperatingSystem({
    this.fontFamily,
    required this.textColor,
    required this.backgroundColor,
  });
}
