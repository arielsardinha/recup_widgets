// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

enum RecupStandardColor {
  ERROR,
  PRIMARY;

  Color? colorText(ColorScheme colorScheme) {
    switch (this) {
      case RecupStandardColor.ERROR:
        return colorScheme.onError;
      case RecupStandardColor.PRIMARY:
        return colorScheme.primary;
    }
  }

  Color? colorBackground(ColorScheme colorScheme) {
    switch (this) {
      case RecupStandardColor.ERROR:
        return colorScheme.error;
      case RecupStandardColor.PRIMARY:
        return colorScheme.primaryContainer;
    }
  }
}

class RecupStandard extends StatefulWidget {
  final String text;
  final Widget? widget;
  final RecupStandardColor color;
  const RecupStandard({
    super.key,
    this.text = '',
    this.widget,
    this.color = RecupStandardColor.ERROR,
  });

  @override
  State<RecupStandard> createState() => _RecupStandardState();
}

class _RecupStandardState extends State<RecupStandard> {
  final _widgetKey = GlobalKey();
  double _widgetWidth = 0;
  final spaceSizeText = 25;
  @override
  void initState() {
    _widgetWidth = getWidgetSize(_widgetKey);
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

    return textWidth + 30 + _widgetWidth;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: calcSize(widget.text, theme),
      padding: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: widget.color.colorBackground(theme.colorScheme),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (widget.widget != null)
            Container(
              key: _widgetKey,
              child: widget.widget!,
            ),
          Text(
            widget.text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelMedium?.copyWith(
              color: widget.color.colorText(theme.colorScheme),
            ),
          ),
        ],
      ),
    );
  }
}