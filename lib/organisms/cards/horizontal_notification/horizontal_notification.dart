part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardHorizontalNotification extends StatelessWidget {
  final String photo, title, subtitle;
  final Widget? child;
  final double value;

  const RecupCardHorizontalNotification({
    super.key,
    this.photo = '',
    this.title = '',
    this.subtitle = '',
    this.child,
    this.value = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.fromBorderSide(
          BorderSide(
            color: theme.colorScheme.surfaceVariant,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
              color: theme.colorScheme.background,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              image: DecorationImage(
                image: NetworkImage(photo),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.inverseSurface,
                          ),
                        ),
                        Text(
                          subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        Material(
                          clipBehavior: Clip.antiAlias,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          child: LinearProgressIndicator(
                            minHeight: 10,
                            value: value,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (child != null) child!,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: IconButton(
                    onPressed: () {},
                    visualDensity: VisualDensity.comfortable,
                    icon: const Icon(Icons.arrow_outward_outlined),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
