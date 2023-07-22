import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:widgetbook/widgetbook.dart';

class TransformAddon extends WidgetbookAddon<TransformAddonSettings> {
  TransformAddon()
      : super(
          name: 'Transform',
          initialSetting: TransformAddonSettings(
            scale: 1.0,
            rotation: 0,
            transform: false,
          ),
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
      DoubleSliderField(
        name: 'Rotation',
        min: 0,
        max: 2 * pi,
        initialValue: 0,
      ),
      BooleanField(
        name: 'Transform',
        initialValue: true,
      ),
    ];
  }

  @override
  TransformAddonSettings valueFromQueryGroup(Map<String, String> group) {
    return TransformAddonSettings(
      scale: valueOf<double?>('Scale', group) ?? 1.0,
      rotation: valueOf<double?>('Rotation', group) ?? 0.0,
      transform: valueOf<bool?>('Transform', group) ?? false,
    );
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    TransformAddonSettings setting,
  ) {
    return _TranformWidget(setting: setting, child: child);
  }
}

class _TranformWidget extends StatefulWidget {
  const _TranformWidget({
    required this.setting,
    required this.child,
  });

  final TransformAddonSettings setting;
  final Widget child;

  @override
  State<_TranformWidget> createState() => _TranformWidgetState();
}

class _TranformWidgetState extends State<_TranformWidget> {
  var _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {

    if (!widget.setting.transform) {
      _offset = Offset.zero;
    }

    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          _offset += details.delta;
        });
      },
      child: Transform.translate(
        offset: _offset,
        child: Transform.scale(
          scale: widget.setting.scale,
          child: Transform.rotate(
            angle: widget.setting.rotation,
            child: Center(child: widget.child),
          ),
        ),
      ),
    );
  }
}

class TransformAddonSettings {
  TransformAddonSettings( {
    required this.scale,
    required this.rotation,
    required this.transform,
  });

  final double scale;
  final double rotation;
  final bool transform;
}
