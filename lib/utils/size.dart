import 'package:flutter/material.dart';

extension SizeUtils on BuildContext {
  /// The horizontal extent of this size.
  double get width => MediaQuery.of(this).size.width;

  /// The vertical extent of this size.
  double get height => MediaQuery.of(this).size.height;

  /// The lesser of the magnitudes of the [width] and the [height].
  double get shortestSide => MediaQuery.of(this).size.shortestSide;

  /// The greater of the magnitudes of the [width] and the [height].
  double get longestSide => MediaQuery.of(this).size.longestSide;

  double getShortestSideBy(double value) => shortestSide / value;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
