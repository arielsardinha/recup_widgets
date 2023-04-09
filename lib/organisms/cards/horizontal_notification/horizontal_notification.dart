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
        borderRadius: BorderRadius.circular(16),
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
                  child: Column(
                    children: [
                      ListTile(
                        title: title.isNotEmpty
                            ? Text(
                                title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                              )
                            : null,
                        subtitle: subtitle.isNotEmpty
                            ? Text(
                                subtitle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                              )
                            : null,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: LinearProgressIndicator(
                          value: value,
                        ),
                      ),
                    ],
                  ),
                ),
                if (child != null) child!,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: IconButton(
                    onPressed: () {},
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
