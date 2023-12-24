import '/src/exports/utils.dart';

extension ShortestSideUtils on BuildContext {
  double get shortestSide2 => shortestSide / 2;

  double get shortestSide3 => shortestSide / 3;

  double get shortestSide5 => shortestSide / 5;

  double get shortestSide8 => shortestSide / 8;

  double get shortestSide10 => shortestSide / 10;

  double get shortestSide28 => shortestSide / 28;

  double get shortestSide36 => shortestSide / 36;

  double get shortestSide40 => shortestSide / 40;

  double get shortestSide48 => shortestSide / 48;
}

extension SizeUtil on double {
  double get asize3 => this / 3;
}

extension TextStyleUtil on TextStyle {
  /// Creates a copy of this text style
  /// but with the given [fontSize] replaced with the new values.
  TextStyle withFontSize(double fontSize) {
    return copyWith(fontSize: fontSize);
  }
}
