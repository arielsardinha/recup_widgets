part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalBignumber extends StatelessWidget {
  final String title, subtitle;
  final Widget? widget, child;
  final void Function()? onPressed;
  const RecupCardVerticalBignumber({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.widget,
    this.onPressed,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 152,
      height: 152,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.fromBorderSide(
          BorderSide(
            color: theme.colorScheme.surfaceVariant,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget != null) widget!,
                if (onPressed != null)
                  IconButton(
                    onPressed: onPressed,
                    icon: const Icon(Icons.arrow_outward_outlined),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title.isNotEmpty)
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge,
                  ),
                if (subtitle.isNotEmpty)
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
              ],
            ),
          ),
          if (child != null)
            Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: child!),
        ],
      ),
    );
  }
}
