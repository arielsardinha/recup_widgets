part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalSuggestion extends StatelessWidget {
  static const paddingTextBottom = EdgeInsets.fromLTRB(16, 0, 16, 16);

  final String title, photoBackground, photoAvatar, nameAvatar, subtitle;
  final Widget? child, content;
  final void Function()? onTap;
  final Color? backgroundColorAvatar, backgroundColor;
  final BoxFit? fit;
  final EdgeInsets? paddingBottom;

  const RecupCardVerticalSuggestion({
    Key? key,
    this.onTap,
    this.title = '',
    this.child,
    this.photoBackground = '',
    this.photoAvatar = '',
    this.nameAvatar = '',
    this.content,
    this.subtitle = '',
    this.backgroundColorAvatar,
    this.backgroundColor,
    this.fit,
    this.paddingBottom = const EdgeInsets.fromLTRB(16, 0, 4, 4),
  }) : super(key: key);

  bool isPhoto(String photo) {
    if (photo.isEmpty) {
      return false;
    }
    final validExtensions = [
      '.png',
      '.jpg',
      '.jpeg',
      '.bmp',
      '.gif',
      '.svg',
      '.webp'
    ];

    return validExtensions
        .any((extensionImage) => photo.toLowerCase().contains(extensionImage));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final int maxLines = title.isNotEmpty && subtitle.isNotEmpty ? 1 : 2;

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 140,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    image: isPhoto(photoBackground)
                        ? DecorationImage(
                            fit: fit ?? BoxFit.cover,
                            image: NetworkImage(photoBackground),
                          )
                        : null,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: RecupCircleAvatar(
                    photo: photoAvatar,
                    name: nameAvatar,
                    backgroundColor: backgroundColorAvatar,
                  ),
                )
              ],
            ),
            Flexible(
              child: Container(
                // color: Colors.red,
                margin: EdgeInsets.fromLTRB(16, 16, 16, child != null ? 0 : 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title.isNotEmpty)
                      Text(
                        title,
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.inverseSurface,
                        ),
                      ),
                    if (subtitle.isNotEmpty)
                      Text(
                        subtitle,
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.inverseSurface,
                        ),
                      ),
                    const Spacer(),
                    if (content != null) content!,
                    if (content != null) const Spacer(),
                  ],
                ),
              ),
            ),
            if (child != null)
              Container(
                alignment: Alignment.centerRight,
                padding: paddingBottom,
                child: child!,
              )
          ],
        ),
      ),
    );
  }
}
