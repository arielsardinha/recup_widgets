import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class UseCaseTest extends StatefulWidget {
  const UseCaseTest({
    super.key,
    required this.builder,
    this.totalButtons = 0,
    this.showCounters = false,
    this.defaultScale = 1,
  });

  final Widget Function(BuildContext context, Function(int i) onTap) builder;

  final int totalButtons;
  final bool showCounters;

  final double defaultScale;

  @override
  State<UseCaseTest> createState() => _UseCaseTestState();
}

class _UseCaseTestState extends State<UseCaseTest> {
  late final List<int> list;

  @override
  void initState() {
    super.initState();
    list = List.filled(widget.totalButtons, 0);
  }

  void onTap(int i) {
    try {
      setState(() {
        list[i]++;
      });
    } catch (e) {
      print('$i is larger than totalButtons');
    }
  }

  @override
  Widget build(BuildContext context) {
    int texts = 0;

    Widget child = widget.builder(context, onTap);

    child = Transform.scale(
      scale: double.tryParse(
        context.knobs.string(
          label: 'scale',
          initialValue: '${widget.defaultScale}',
          description: 'storybook only',
        ),
      ) ??
          widget.defaultScale,
      child: child,
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...list.map((e) => Text('call(${texts++}): $e')).toList(),
          if (list.isNotEmpty)
            const SizedBox(
              height: 16,
            ),
          child,
        ],
      ),
    );
  }
}
