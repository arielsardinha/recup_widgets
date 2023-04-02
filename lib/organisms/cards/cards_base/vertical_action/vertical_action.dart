part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalAction extends StatelessWidget {
  final String photo, name, title, subtitle, text, textButton;
  final Widget? icon, iconButton;
  final void Function()? onPressedIconButton, onPressed;
  final bool isPrimaryContainerColorButton;
  final IconData? iconFromButtom;
  const RecupCardVerticalAction({
    super.key,
    this.photo = '',
    this.name = '',
    this.iconButton,
    this.title = '',
    this.subtitle = '',
    this.text = '',
    this.icon,
    this.iconFromButtom,
    this.textButton = '',
    required this.onPressedIconButton,
    this.onPressed,
    this.isPrimaryContainerColorButton = false,
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
                    photo: photo,
                    name: name,
                  ),
                  if (iconButton != null)
                    IconButton(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.zero,
                      onPressed: onPressedIconButton,
                      icon: iconButton!,
                    ),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(title),
                subtitle: Text(subtitle),
              ),
              Row(
                children: [
                  if (icon != null) icon!,
                  if (icon != null)
                    const SizedBox(
                      width: 4,
                    ),
                  Text(
                    text,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
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
                    color: isPrimaryContainerColorButton
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onPrimary,
                  ),
                if (iconFromButtom != null)
                  const SizedBox(
                    width: 8,
                  ),
                Text(
                  textButton,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: isPrimaryContainerColorButton
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
