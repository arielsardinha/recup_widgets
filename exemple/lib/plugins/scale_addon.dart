import 'package:flutter/cupertino.dart';
import 'package:widgetbook/widgetbook.dart';

class ScaleAddon extends WidgetbookAddon<double> {
  ScaleAddon()
      : super(
          name: 'Scale',
          initialSetting: 1,
        );

  @override
  List<Field> get fields {
    return [
      DoubleSliderField(
        name: 'Scale',
        min: 1,
        max: 10,
        initialValue: 1,
      ),
    ];
  }

  @override
  double valueFromQueryGroup(Map<String, String> group) {
    return valueOf<double?>('Scale', group) ?? 1.0;
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    double setting,
  ) {
    return Transform.scale(scale: setting, child: child);
  }
}
