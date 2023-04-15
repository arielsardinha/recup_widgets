part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalSuggestion extends StatelessWidget {
  final String title, photoBackground, photoAvatar, nameAvatar, textContent;
  final Widget? child, subtitleListTile;
  final void Function()? onTap;
  final Color? backgroundColorAvatar, backgroundColor;

  final RecupStatusColor textContentColor;

  const RecupCardVerticalSuggestion({
    Key? key,
    this.onTap,
    this.title = '',
    this.child,
    this.photoBackground = '',
    this.photoAvatar = '',
    this.nameAvatar = '',
    this.textContent = '',
    this.backgroundColorAvatar,
    this.textContentColor = RecupStatusColor.AVAILABLE,
    this.backgroundColor,
    this.subtitleListTile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.fromBorderSide(
            BorderSide(
              color: theme.colorScheme.surfaceVariant,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 140,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(photoBackground),
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      child: RecupCircleAvatar(
                        photo: photoAvatar,
                        name: nameAvatar,
                        backgroundColor: backgroundColorAvatar,
                      ),
                    )
                  ],
                ),
                if (title.isNotEmpty)
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.inverseSurface,
                      ),
                    ),
                  ),
                if (subtitleListTile != null)
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 16, left: 16, bottom: 8),
                    child: subtitleListTile,
                  ),
                if (textContent.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RecupStatus(
                      text: textContent,
                      width: 140,
                      color: textContentColor,
                    ),
                  ),
              ],
            ),
            const Spacer(),
            if (child != null) child!
          ],
        ),
      ),
    );
  }
}
