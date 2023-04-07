part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalFeedCard extends StatelessWidget {
  final String nameAvatar,
      titleHeader,
      subtitleHeader,
      photoHeader,
      recoins,
      titleContent,
      subtitleContent,
      textContent;
  final List<String> backgroundImages;
  final void Function()? onPressedOutlinedButton;
  final void Function()? onPressedElevatedButton;
  final bool isPrimaryContainerColorButton;
  final Widget? children,
      recoinsIcon,
      trailingHeader,
      childOutlinedButton,
      childElevatedButton;

  const RecupCardVerticalFeedCard({
    super.key,
    this.nameAvatar = '',
    this.titleHeader = '',
    this.subtitleHeader = '',
    this.backgroundImages = const [],
    this.photoHeader = '',
    this.children,
    this.trailingHeader,
    this.onPressedOutlinedButton,
    this.onPressedElevatedButton,
    this.childOutlinedButton,
    this.childElevatedButton,
    this.isPrimaryContainerColorButton = false,
    this.recoins = '',
    this.recoinsIcon,
    this.titleContent = '',
    this.subtitleContent = '',
    this.textContent = '',
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 360,
      height: 480,
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
          RecupCardHeader(
            nameAvatar: nameAvatar,
            title: titleHeader,
            subtitle: subtitleHeader,
            photo: photoHeader,
            trailing: trailingHeader,
          ),
          RecupCarousel(
            images: backgroundImages,
          ),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text(titleContent),
                  subtitle: Text(subtitleContent),
                ),
              ),
              if (recoins.isNotEmpty || recoinsIcon != null)
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: RecupInputChip(
                    text: recoins,
                    widget: recoinsIcon,
                  ),
                )
            ],
          ),
          if (textContent.isNotEmpty)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: theme.colorScheme.error,
              ),
              child: Text(
                textContent,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.onError,
                ),
              ),
            ),
          const Spacer(),
          if (children != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: children!,
            ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: onPressedOutlinedButton,
                  child: childOutlinedButton,
                ),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: onPressedElevatedButton,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: isPrimaryContainerColorButton
                        ? theme.colorScheme.onPrimaryContainer
                        : null,
                    backgroundColor: isPrimaryContainerColorButton
                        ? theme.colorScheme.primaryContainer
                        : null,
                  ),
                  child: childElevatedButton,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
