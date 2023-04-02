part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalAction extends StatelessWidget {
  final String photo, name, title, subtitle, text, textButton;
  final Widget? icon, iconFromButtom, iconButton;
  final void Function()? onPressedIconButton, onPressed;
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
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 160,
      height: 214,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
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
            child: Row(
              children: [
                if (iconFromButtom != null) iconFromButtom!,
                if (iconFromButtom != null)
                  const SizedBox(
                    width: 8,
                  ),
                Text(
                  textButton,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
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
