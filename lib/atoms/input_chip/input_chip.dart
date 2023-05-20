part of 'package:recup_storybook/recup_storybook.dart';

class RecupInputChip extends StatefulWidget {
  final String text;
  final Widget? widget;
  final bool disabled, loading;
  const RecupInputChip({
    Key? key,
    this.text = '',
    this.widget,
    this.disabled = false,
    this.loading = false,
  }) : super(key: key);

  @override
  State createState() => _RecupInputChipState();
}

class _RecupInputChipState extends State<RecupInputChip> {
  final _widgetKey = GlobalKey();
  double _widgetWidth = 0;
  final spaceSizeText = 10;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _widgetWidth = getWidgetSize(_widgetKey);
      });
    });
    super.initState();
  }

  double getWidgetSize(GlobalKey key) {
    final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    return renderBox?.size.width ?? 0;
  }

  double calcSize(String text, ThemeData theme) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: theme.textTheme.titleSmall
            ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    final textWidth = textPainter.width;

    return textWidth + 11 + _widgetWidth;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (widget.loading) {
      return const SkeletonLine(
        style: SkeletonLineStyle(
          width: 80,
          height: 30,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          alignment: Alignment.center,
        ),
      );
    }

    return Container(
      width: calcSize(widget.text, theme),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: widget.disabled
              ? theme.colorScheme.outlineVariant
              : theme.colorScheme.onSurfaceVariant,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (widget.widget != null)
            Container(
              key: _widgetKey,
              margin: const EdgeInsets.only(right: 4, top: 2, bottom: 2),
              child: widget.widget!,
            ),
          Expanded(
            child: Text(
              widget.text,
              maxLines: 1,
              style: theme.textTheme.titleSmall?.copyWith(
                color: widget.disabled
                    ? theme.colorScheme.outlineVariant
                    : theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
