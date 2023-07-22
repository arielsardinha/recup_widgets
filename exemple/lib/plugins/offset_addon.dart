import 'package:flutter/cupertino.dart';
import 'package:widgetbook/widgetbook.dart';

class OffsetAddon extends WidgetbookAddon<bool> {
  OffsetAddon()
      : super(
    name: 'Offset',
    initialSetting: false,
  );

  @override
  List<Field> get fields {
    return [
      BooleanField(
        name: 'Offset',
        initialValue: false,
      ),
    ];
  }

  @override
  bool valueFromQueryGroup(Map<String, String> group) {
    return valueOf<bool?>('Offset', group) ?? false;
  }

  @override
  Widget buildUseCase(
      BuildContext context,
      Widget child,
      bool setting,
      ) {
    return _TranformWidget(setting: setting, child: child);
  }
}

class _TranformWidget extends StatefulWidget {
  const _TranformWidget({
    required this.setting,
    required this.child,
  });

  final bool setting;
  final Widget child;

  @override
  State<_TranformWidget> createState() => _TranformWidgetState();
}

class _TranformWidgetState extends State<_TranformWidget> {
  var _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {

    if (!widget.setting) {
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
        child: Center(child: widget.child),
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
