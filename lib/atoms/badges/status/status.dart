// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

enum RecupStatusColor {
  UNVAILABLO,
  AVAILABLE,
  OPERATING;

  Color? color(ColorScheme colorScheme) {
    switch (this) {
      case RecupStatusColor.UNVAILABLO:
        return colorScheme.error;
      case RecupStatusColor.AVAILABLE:
        return colorScheme.primary;
      case RecupStatusColor.OPERATING:
        return colorScheme.secondary;
    }
  }

  Color? colorBackground(ColorScheme colorScheme) {
    switch (this) {
      case RecupStatusColor.UNVAILABLO:
        return colorScheme.errorContainer;
      case RecupStatusColor.AVAILABLE:
        return colorScheme.primaryContainer;
      case RecupStatusColor.OPERATING:
        return colorScheme.secondaryContainer;
    }
  }
}

class RecupStatus extends StatelessWidget {
  final String text;
  final RecupStatusColor color;
  const RecupStatus({
    super.key,
    this.text = '',
    this.color = RecupStatusColor.AVAILABLE,
  });

  final spaceSizeText = 25;

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

    return textWidth + 30;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: calcSize(text, theme),
      padding: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color.colorBackground(theme.colorScheme),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color.color(theme.colorScheme),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelMedium?.copyWith(
              color: color.color(theme.colorScheme),
            ),
          ),
        ],
      ),
    );
  }
}
