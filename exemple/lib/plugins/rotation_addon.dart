import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:widgetbook/widgetbook.dart';

class RotationAddon extends WidgetbookAddon<double> {
  RotationAddon()
      : super(
          name: 'Rotation',
          initialSetting: 0.0,
        );

  @override
  List<Field> get fields {
    return [
      DoubleSliderField(
        name: 'Rotation',
        min: 0,
        max: 2 * pi,
        initialValue: 0,
      ),
    ];
  }

  @override
  double valueFromQueryGroup(Map<String, String> group) {
    return valueOf<double?>('Rotation', group) ?? 0.0;
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    double setting,
  ) {
    return Transform.rotate(angle: setting, child: child);
  }
}
