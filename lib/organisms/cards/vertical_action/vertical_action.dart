part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalAction extends StatelessWidget {
  final String photoAvatar, nameAvatar, title, subtitle, textCenter, textButton;
  final Widget? iconCenter, iconHeader;
  final void Function()? onPressedHeaderIconButton, onPressedButton;
  final bool isPrimaryContainerColorButton;
  final IconData? iconFromButtom;
  final Color? backgroundColorAvatar;
  const RecupCardVerticalAction({
    super.key,
    this.photoAvatar = '',
    this.nameAvatar = '',
    this.iconHeader,
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
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
                  RecupCircleAvatar(
                    photo: photoAvatar,
                    name: nameAvatar,
                    backgroundColor: backgroundColorAvatar,
                  ),
                  if (iconHeader != null)
                    IconButton(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.zero,
                      onPressed: onPressedHeaderIconButton,
                      icon: iconHeader!,
                    ),
                ],
              ),
              Visibility(
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
              Visibility(
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
            ],
          ),
          ElevatedButton(
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
          )
        ],
      ),
    );
  }
}
