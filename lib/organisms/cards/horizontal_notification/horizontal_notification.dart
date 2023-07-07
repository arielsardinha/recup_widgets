part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardHorizontalNotification extends StatelessWidget with ImageValidationMixin {
  final String photo, title, subtitle;
  final Widget? child, leading;
  final double value;
  final VoidCallback? onPressed;

  const RecupCardHorizontalNotification({
    super.key,
    this.photo = '',
    this.title = '',
    this.subtitle = '',
    this.leading,
    this.child,
    this.value = 0.0,
    this.onPressed,
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
          if (photo.isNotEmpty)
            Container(
              width: 80,
              decoration: BoxDecoration(
                color: theme.colorScheme.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                image: isPhoto(photo) ? DecorationImage(
                  image: NetworkImage(photo),
                  fit: BoxFit.cover,
                ) : null,
              ),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 4, 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (leading != null) leading!,
                  Flexible(
                    child: Container(
                      padding: leading != null
                          ? const EdgeInsets.only(left: 16)
                          : null,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            ],
                          ),
                          Material(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            child: LinearProgressIndicator(
                              minHeight: 4,
                              value: value,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (child != null)
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      child: child!,
                    ),
                  if (onPressed != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: IconButton(
                        onPressed: onPressed,
                        visualDensity: VisualDensity.comfortable,
                        icon: const Icon(Icons.arrow_outward_outlined),
                      ),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
