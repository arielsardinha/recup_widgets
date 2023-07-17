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
        return colorScheme.onPrimaryContainer;
    }
  }

  Color? colorBackground(ColorScheme colorScheme) {
    switch (this) {
      case RecupBadgeStandardColor.ERROR:
        return colorScheme.error;
      case RecupBadgeStandardColor.PRIMARY:
        return colorScheme.surfaceVariant;
    }
  }
}

class RecupBadgeStandard extends StatelessWidget {
  final String text;

  final RecupBadgeStandardColor color;
  final double? maxWidth;

  const RecupBadgeStandard({
    super.key,
    this.text = '',
    this.color = RecupBadgeStandardColor.ERROR,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    double padding = text.length > 1 ? 4 : 1;
    double fontHeight = text.isNotEmpty ? 16 : 0;
    double minSize = 6;

    double size = minSize > fontHeight ? minSize : fontHeight;

    var constrains = BoxConstraints(
      minWidth: size,
      minHeight: size,
    );

    if (maxWidth != null) {
      constrains = constrains.copyWith(
        maxWidth: maxWidth,
        minWidth: size > maxWidth! ? maxWidth : size,
      );
    }

    if (text.isEmpty) {
      constrains = BoxConstraints.loose(Size.square(size));
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      constraints: constrains,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color.colorBackground(theme.colorScheme),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: text.isNotEmpty
          ? Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelSmall?.copyWith(
                color: color.colorText(theme.colorScheme),
              ),
              textAlign: TextAlign.center,
            )
          : null,
    );
  }
}
