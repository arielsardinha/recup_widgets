part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalSuggestion extends StatelessWidget {
  final String title,
      subtitle,
      photoBackground,
      photoAvatar,
      nameAvatar,
      textContent;
  final Widget? child, subtitleIcon;
  final void Function()? onTap;
  final Color? backgroundColorAvatar, backgroundColor;

  final RecupStatusColor textContentColor;

  const RecupCardVerticalSuggestion({
    Key? key,
    this.onTap,
    this.title = '',
    this.subtitle = '',
    this.child,
    this.photoBackground = '',
    this.photoAvatar = '',
    this.nameAvatar = '',
    this.textContent = '',
    this.backgroundColorAvatar,
    this.textContentColor = RecupStatusColor.AVAILABLE,
    this.backgroundColor,
    this.subtitleIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget? subtitleListTiel() {
      if (subtitle.isNotEmpty || subtitleIcon != null) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (subtitleIcon != null) subtitleIcon!,
            if (subtitle.isNotEmpty)
              SizedBox(
                width: subtitleIcon != null ? 130 : 150,
                child: Text(
                  subtitle,
                  maxLines: textContent.isNotEmpty && child != null ? 1 : 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        );
      }
      return null;
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 280,
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
                if (subtitle.isNotEmpty || title.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: title.isNotEmpty
                          ? Text(
                              title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )
                          : null,
                      subtitle: subtitleListTiel(),
                    ),
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
            const SizedBox(
              height: 16,
            ),
            const Spacer(),
            if (child != null) child!
          ],
        ),
      ),
    );
  }
}
