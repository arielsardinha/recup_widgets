part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalBignumber extends StatelessWidget {
  final String title, subtitle;
  final Widget? widget, child;
  final void Function()? onPressed;
  final bool iconCircleBackground;

  const RecupCardVerticalBignumber({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.widget,
    this.onPressed,
    this.child,
    this.iconCircleBackground = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final border = BorderRadius.circular(20);
    return SizedBox(
      width: 152,
      height: 152,
      child: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: border,
        child: InkWell(
          onTap: onPressed,
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: border,
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
                      if (widget != null)
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Builder(
                            builder: (context) {
                              if (widget! is Icon && iconCircleBackground) {
                                return CircleAvatar(
                                  backgroundColor:
                                      theme.colorScheme.surfaceVariant,
                                  child: widget,

                                );
                              }
                              return widget!;
                            },
                          ),
                        ),
                      // if (onPressed != null)
                      //   IconButton(
                      //     onPressed: onPressed,
                      //     icon: const Icon(Icons.arrow_outward_outlined),
                      //   ),
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
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.inverseSurface,
                          ),
                        ),
                      if (subtitle.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            subtitle,
                            maxLines: child != null ? 2 : 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant),
                          ),
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
          ),
        ),
      ),
    );
  }
}
