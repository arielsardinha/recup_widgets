part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalAction extends StatelessWidget {
  final String photoAvatar, nameAvatar, title, subtitle, textCenter, textButton;
  final Widget? iconCenter, iconButtonHeader;
  final void Function()? onPressedHeaderIconButton, onPressedButton;
  final bool isPrimaryContainerColorButton;
  final IconData? iconFromButtom;
  final Color? backgroundColorAvatar;
  const RecupCardVerticalAction({
    super.key,
    this.photoAvatar = '',
    this.nameAvatar = '',
    this.iconButtonHeader,
    this.title = '',
    this.subtitle = '',
    this.textCenter = '',
    this.iconCenter,
    this.iconFromButtom,
    this.textButton = '',
    this.onPressedHeaderIconButton,
    required this.onPressedButton,
    this.isPrimaryContainerColorButton = false,
    this.backgroundColorAvatar,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 160,
      height: 214,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.fromBorderSide(
          BorderSide(
            color: theme.colorScheme.surfaceVariant,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: RecupCircleAvatar(
                      photo: photoAvatar,
                      name: nameAvatar,
                      backgroundColor: backgroundColorAvatar,
                    ),
                  ),
                  if (iconButtonHeader != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 16, right: 16),
                      child: iconButtonHeader!,
                    )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Visibility(
                  visible: !(title.isEmpty && subtitle.isEmpty),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: title.isNotEmpty
                        ? Text(
                            title,
                            maxLines: 2,
                          )
                        : null,
                    subtitle: subtitle.isNotEmpty
                        ? Text(
                            subtitle,
                            maxLines: 1,
                          )
                        : null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Visibility(
                  visible: iconCenter != null || textCenter.isNotEmpty,
                  child: Row(
                    children: [
                      if (iconCenter != null) iconCenter!,
                      if (iconCenter != null)
                        const SizedBox(
                          width: 4,
                        ),
                      Text(
                        textCenter,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
            child: ElevatedButton(
              onPressed: onPressedButton,
              style: ElevatedButton.styleFrom(
                foregroundColor: isPrimaryContainerColorButton
                    ? theme.colorScheme.onPrimaryContainer
                    : null,
                backgroundColor: isPrimaryContainerColorButton
                    ? theme.colorScheme.primaryContainer
                    : null,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (iconFromButtom != null)
                    Icon(
                      iconFromButtom!,
                      size: 16,
                    ),
                  if (iconFromButtom != null)
                    const SizedBox(
                      width: 8,
                    ),
                  Text(textButton),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
