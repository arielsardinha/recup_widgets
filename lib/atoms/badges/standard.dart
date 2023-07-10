// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

enum RecupBadgeStandardColor {
  ERROR,
  PRIMARY;

  Color? colorText(ColorScheme colorScheme) {
    switch (this) {
      case RecupBadgeStandardColor.ERROR:
        return colorScheme.onError;
      case RecupBadgeStandardColor.PRIMARY:
        return colorScheme.primary;
    }
  }

  Color? colorBackground(ColorScheme colorScheme) {
    switch (this) {
      case RecupBadgeStandardColor.ERROR:
        return colorScheme.error;
      case RecupBadgeStandardColor.PRIMARY:
        return colorScheme.primaryContainer;
    }
  }
}

class RecupBadgeStandard extends StatefulWidget {
  final String text;
  final Widget? widget;

  final RecupBadgeStandardColor color;
  final double? maxWidth;

  const RecupBadgeStandard({
    super.key,
    this.text = '',
    this.widget,
    this.color = RecupBadgeStandardColor.ERROR,
    this.maxWidth,
  });

  @override
  State<RecupBadgeStandard> createState() => _RecupBadgeStandardState();
}

class _RecupBadgeStandardState extends State<RecupBadgeStandard> {
  final _widgetKey = GlobalKey();
  double _widgetWidth = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _widgetWidth = getWidgetSize(_widgetKey);
        });
      }
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
        style: theme.textTheme.labelMedium
            ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    final textWidth = textPainter.width;
    const spaceTextSize = 13;
    return textWidth + spaceTextSize + _widgetWidth;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final double minSize = widget.text.isEmpty
        ? 10
        : (theme.textTheme.labelMedium?.fontSize ?? 16) * 1.5;

    return Container(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
      constraints: widget.maxWidth != null
          ? BoxConstraints(
        maxWidth: widget.maxWidth! + 21,
        minWidth: minSize,
        minHeight: 10,
      )
          : BoxConstraints(
        minWidth: minSize,
        minHeight: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: widget.color.colorBackground(theme.colorScheme),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.widget != null)
            Container(
              key: _widgetKey,
              child: widget.widget!,
            ),
          if (widget.text.isNotEmpty)
            Flexible(
              child: Text(
                widget.text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: widget.color.colorText(theme.colorScheme),
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
