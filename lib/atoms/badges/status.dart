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

  /// o [width] mínimo é 16.0
  const RecupBadgeStatus({
    super.key,
    this.text = '',
    this.color = RecupBadgeStatusColor.AVAILABLE,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    double minSize = 16;
    double boxSize = minSize / 2.0;

    var constrains = BoxConstraints(
      minWidth: minSize,
      minHeight: minSize,
    );

    if (width != null) {
      constrains = constrains.copyWith(
        maxWidth: minSize > width! ? minSize : width,
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      constraints: constrains,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color.colorBackground(theme.colorScheme),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: boxSize,
            height: boxSize,
            decoration: BoxDecoration(
              color: color.color(theme.colorScheme),
              shape: BoxShape.circle,
            ),
          ),
          if (text.isNotEmpty)
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: color.color(theme.colorScheme),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
        ],
      ),
    );
  }
}
