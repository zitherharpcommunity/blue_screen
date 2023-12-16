import '/src/exports/utils.dart';

extension MediaQueryUtils on BuildContext {
  /// The horizontal extent of this size.
  double get width => MediaQuery.of(this).size.width;

  /// The vertical extent of this size.
  double get height => MediaQuery.of(this).size.height;

  /// The greater of the magnitudes of the [width] and the [height].
  double get longestSide => MediaQuery.of(this).size.longestSide;

  /// The lesser of the magnitudes of the [width] and the [height].
  double get shortestSide => MediaQuery.of(this).size.shortestSide;
}
