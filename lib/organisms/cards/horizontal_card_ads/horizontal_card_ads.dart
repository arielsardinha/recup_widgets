part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardHorizontalActionAds extends StatelessWidget {
  final String title,
      subtitle,
      avatarPhoto,
      avatarName,
      photoBackground,
      badgeText;
  final RecupStandardColor badgeColor;
  final void Function()? onPressedButton;
  final Widget? leading, childButton;

  final Color? avatarBackgroundColor;
  final double? widthText;
  final bool isActive;

  const RecupCardHorizontalActionAds({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.badgeText = '',
    this.badgeColor = RecupStandardColor.ERROR,
    this.onPressedButton,
    this.avatarPhoto = '',
    this.leading,
    this.photoBackground = '',
    this.avatarName = '',
    this.avatarBackgroundColor,
    this.childButton,
    this.widthText,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 156,
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
          Stack(
            children: [
              Container(
                width: 160,
                decoration: BoxDecoration(
                  color: theme.colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(photoBackground),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (avatarPhoto.isNotEmpty || avatarName.isNotEmpty)
                Positioned(
                  top: 16,
                  left: 16,
                  child: RecupCircleAvatar(
                    photo: avatarPhoto,
                    name: avatarName,
                    backgroundColor: avatarBackgroundColor,
                  ),
                )
            ],
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: leading,
                    title: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium,
                    ),
                    subtitle: Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  if (badgeText.isNotEmpty) RecupStandard(
                    text: badgeText,
                    color: badgeColor,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: RecupTonalButton(
                      onPressed: onPressedButton,
                      recupButtonStyle: RecupButtonStyle(
                          visualDensityButton: VisualDensityButton.comfortable),
                      child: childButton,
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
