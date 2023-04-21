part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardHorizontalCardAds extends StatelessWidget {
  final String title, subtitle, text, avatarPhoto, avatarName, photoBackground;
  final void Function()? onPressedButton;
  final Widget? leading, childButton;
  final Color? avatarBackgroundColor;
  final double? widthText;
  final bool isActive;
  const RecupCardHorizontalCardAds({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.text = '',
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
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    title,
                    maxLines: 2,
                  ),
                  subtitle: Text(
                    subtitle,
                    maxLines: 2,
                  ),
                  leading: leading,
                ),
                if (text.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RecupStandard(
                      width:
                          widthText ?? MediaQuery.of(context).size.width * 0.1,
                      text: text,
                    ),
                  ),
                const Spacer(),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(right: 16, bottom: 16),
                  child: ElevatedButton(
                    onPressed: onPressedButton,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: isActive
                            ? theme.colorScheme.primaryContainer
                            : theme.colorScheme.primary),
                    child: childButton,
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
