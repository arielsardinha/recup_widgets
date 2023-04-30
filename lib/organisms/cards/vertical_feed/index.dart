part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalFeedBackground {
  List<String>? backgroundImages;
  Widget? backgroundWidget;

  RecupCardVerticalFeedBackground({
    this.backgroundImages,
    this.backgroundWidget,
  });

  List<RecupCarouselItem<String>> toMapbackgroundImages() {
    if (backgroundImages != null) {
      return backgroundImages!
          .map((e) => RecupCarouselItem(images: e, item: e))
          .toList();
    }
    return [];
  }
}

class RecupCardVerticalFeedCard extends StatelessWidget {
  final String nameAvatar,
      titleHeader,
      subtitleHeader,
      photoHeader,
      recoins,
      titleContent,
      subtitleContent;
  final RecupCardVerticalFeedBackground? backgroundImages;
  final void Function()? onPressedOutlinedButton;
  final void Function()? onPressedElevatedButton;
  final bool isActive, noSliderPoints, recoinsDisabled;
  final Widget? children,
      recoinsIcon,
      trailingHeader,
      childOutlinedButton,
      childElevatedButton,
      childContent;

  final RecupCarouselSize carouselSize;
  final double? width;

  const RecupCardVerticalFeedCard({
    super.key,
    this.nameAvatar = '',
    this.titleHeader = '',
    this.subtitleHeader = '',
    this.backgroundImages,
    this.photoHeader = '',
    this.children,
    this.trailingHeader,
    this.onPressedOutlinedButton,
    this.onPressedElevatedButton,
    this.childOutlinedButton,
    this.childElevatedButton,
    this.isActive = false,
    this.recoins = '',
    this.recoinsIcon,
    this.titleContent = '',
    this.subtitleContent = '',
    this.recoinsDisabled = false,
    this.childContent,
    this.noSliderPoints = false,
    this.carouselSize = RecupCarouselSize.LARGE,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Container(
      width: width,
      height: carouselSize == RecupCarouselSize.NORMAL ? 480 : 520,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.fromBorderSide(
          BorderSide(
            color: theme.colorScheme.surfaceVariant,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: titleHeader.isEmpty
                      ? null
                      : Text(
                          titleHeader,
                          maxLines: 1,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.inverseSurface,
                          ),
                        ),
                  subtitle: subtitleHeader.isEmpty
                      ? null
                      : Text(
                          subtitleHeader,
                          maxLines: 1,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                  leading: RecupCircleAvatar(
                    name: nameAvatar,
                    photo: photoHeader,
                  ),
                ),
              ),
              if (trailingHeader != null) trailingHeader!,
              const SizedBox(
                width: 8,
              )
            ],
          ),
          if ((backgroundImages?.backgroundImages?.isNotEmpty ?? false) &&
              backgroundImages?.backgroundWidget == null)
            RecupCarousel(
              noSliderPoints: noSliderPoints,
              itens: backgroundImages!.toMapbackgroundImages(),
              height: carouselSize,
            ),
          if (backgroundImages?.backgroundWidget != null &&
              (backgroundImages?.backgroundImages?.isEmpty ?? true))
            backgroundImages!.backgroundWidget!,
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                if (titleContent.isNotEmpty || subtitleContent.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    constraints: BoxConstraints(
                      maxWidth: size.width - 100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (titleContent.isNotEmpty)
                          Text(
                            titleContent,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.inverseSurface,
                            ),
                          ),
                        if (subtitleContent.isNotEmpty)
                          Text(
                            subtitleContent,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                      ],
                    ),
                  ),
                const Spacer(),
                if (recoins.isNotEmpty || recoinsIcon != null)
                  RecupInputChip(
                    text: recoins,
                    widget: recoinsIcon,
                    disabled: recoinsDisabled,
                  )
              ],
            ),
          ),
          if (childContent != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: childContent!,
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
                    foregroundColor:
                        isActive ? theme.colorScheme.onPrimaryContainer : null,
                    backgroundColor:
                        isActive ? theme.colorScheme.primaryContainer : null,
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
