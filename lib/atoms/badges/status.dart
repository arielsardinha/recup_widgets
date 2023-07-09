// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

enum RecupBadgeStatusColor {
  UNVAILABLO,
  AVAILABLE,
  OPERATING;

  Color? color(ColorScheme colorScheme) {
    switch (this) {
      case RecupBadgeStatusColor.UNVAILABLO:
        return colorScheme.error;
      case RecupBadgeStatusColor.AVAILABLE:
        return colorScheme.primary;
      case RecupBadgeStatusColor.OPERATING:
        return colorScheme.secondary;
    }
  }

  Color? colorBackground(ColorScheme colorScheme) {
    switch (this) {
      case RecupBadgeStatusColor.UNVAILABLO:
        return colorScheme.errorContainer.withOpacity(0.5);
      case RecupBadgeStatusColor.AVAILABLE:
        return colorScheme.primaryContainer.withOpacity(0.5);
      case RecupBadgeStatusColor.OPERATING:
        return colorScheme.secondaryContainer.withOpacity(0.5);
    }
  }
}

class RecupBadgeStatus extends StatelessWidget {
  final String text;
  final RecupBadgeStatusColor color;
  final double? width;
  const RecupBadgeStatus({
    super.key,
    this.text = '',
    this.color = RecupBadgeStatusColor.AVAILABLE,
    this.width,
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
      padding: const EdgeInsets.symmetric(horizontal: 4),
      constraints: width != null
          ? BoxConstraints(
        maxWidth: width! + 20,
        minHeight: 15,
      )
          : const BoxConstraints(
        minHeight: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color.colorBackground(theme.colorScheme),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            margin: text.isEmpty ? null : const EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
                color: color.color(theme.colorScheme), shape: BoxShape.circle),
          ),
          if (text.isNotEmpty)
            Flexible(
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: color.color(theme.colorScheme),
                ),
                textAlign: TextAlign.center,
              ),
            )
        ],
      ),
    );
  }
}
