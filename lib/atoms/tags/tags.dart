// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

class RecupTagColorContainer {
  final Color primary;
  final Color secondary;

  RecupTagColorContainer(this.primary, this.secondary);
}

enum RecupTagColor {
  GREEN,
  NEUTRAL,
  ORANGE,
  RED;

  RecupTagColorContainer getColorContainer(ColorScheme colorScheme) {
    switch (this) {
      case RecupTagColor.GREEN:
        return RecupTagColorContainer(
            colorScheme.onPrimaryContainer, colorScheme.primaryContainer);
      case RecupTagColor.NEUTRAL:
        return RecupTagColorContainer(
            colorScheme.onSurfaceVariant, colorScheme.onInverseSurface);
      case RecupTagColor.ORANGE:
        return RecupTagColorContainer(
            colorScheme.secondary, colorScheme.secondaryContainer);
      case RecupTagColor.RED:
        return RecupTagColorContainer(
            colorScheme.error, colorScheme.errorContainer);
    }
  }
}

class RecupTag extends StatelessWidget {
  const RecupTag({
    super.key,
    required this.color,
    required this.text,
    this.maxWidth,
  });

  final RecupTagColor color;
  final String text;
  final double? maxWidth;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = color.getColorContainer(theme.colorScheme);


    return Container(
      constraints: maxWidth != null ? BoxConstraints(
        maxWidth: maxWidth!,
      ) : null,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: colors.secondary,
        border: Border.all(
          color: colors.primary,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        text,
        style: theme.textTheme.bodySmall?.copyWith(color: colors.primary),
      ),
    );
  }
}
