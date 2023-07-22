import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class VoidCallBackInh extends InheritedWidget {
  const VoidCallBackInh({
    super.key,
    required this.call,
    required Widget child,
  }) : super(child: child);

  static VoidCallBackInh of(BuildContext context) {
    final VoidCallBackInh? result =
        context.dependOnInheritedWidgetOfExactType<VoidCallBackInh>();
    assert(result != null, 'No VoidCallBackState found in context');
    return result!;
  }

  final void Function(int i) call;

  @override
  bool updateShouldNotify(VoidCallBackInh oldWidget) {
    return false;
  }
}

extension VoidCallBackExtension on BuildContext {
  VoidCallBackInh get callbacks {
    final state = VoidCallBackInh.of(this);
    return state;
  }
}

class VoidCallbackAddon extends WidgetbookAddon<bool> {
  VoidCallbackAddon()
      : super(
          name: 'CallBacks',
          initialSetting: false,
        );

  @override
  List<Field> get fields {
    return [
      BooleanField(
        name: 'Callbacks',
        initialValue: true,
      ),
    ];
  }

  @override
  bool valueFromQueryGroup(Map<String, String> group) {
    return valueOf<bool?>('Callbacks', group) ?? false;
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    bool setting,
  ) {
    return _VoidCallbacksWidget(
      showCounters: setting,
      child: child,
    );
  }
}

class _VoidCallbacksWidget extends StatefulWidget {
  const _VoidCallbacksWidget({
    required this.showCounters,
    required this.child,
  });

  final bool showCounters;
  final Widget child;

  @override
  State<_VoidCallbacksWidget> createState() => _VoidCallbacksWidgetState();
}

class _VoidCallbacksWidgetState extends State<_VoidCallbacksWidget> {
  late final Map<int, int> list = {};

  @override
  void initState() {
    super.initState();
  }

  void onTap(int i) {
    setState(() {
      int counter = list[i] ?? 0;
      counter++;
      list[i] = counter;
    });

  }

  @override
  Widget build(BuildContext context) {
    int texts = 0;

    if (!widget.showCounters) {
      list.clear();
    }

    return Stack(
      children: [
        if (list.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Column(
              children: list.entries.map((e) {
                texts++;
                return Text('call $texts: ${e.value}');
              }).toList(),
            ),
          ),
        VoidCallBackInh(
          call: onTap,
          child: widget.child,
        ),
      ],
    );
  }
}
