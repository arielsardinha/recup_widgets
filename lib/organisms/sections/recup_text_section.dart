part of 'package:recup_storybook/recup_storybook.dart';
/// Talvez isso seja uma Molecula por só usar parâmetros de valores primitivos
class RecupTextSection extends StatelessWidget {
  final String textLeft;
  final IconData? iconLeft;
  final String textRight;
  final IconData? iconRight;
  final double iconRightSize;
  final Function()? onTap;
  final EdgeInsets? padding;

  const RecupTextSection({
    Key? key,
    required this.textLeft,
    this.textRight = '',
    this.onTap,
    this.iconRight,
    this.iconLeft,
    this.iconRightSize = 16,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: padding ??
          EdgeInsets.only(left: 16, right: textRight.isNotEmpty ? 0 : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                iconLeft,
                color: theme.colorScheme.primary,
              ),
              Container(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  textLeft,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: RecupTextButton(
              onPressed: onTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    iconRight,
                    color: theme.colorScheme.primary,
                    size: iconRightSize,
                  ),
                  if (textRight.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        textRight,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                        softWrap: false,
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
