part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalSuggestion extends StatelessWidget
    with ImageValidationMixin {
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
    this.paddingBottom = const EdgeInsets.fromLTRB(16, 0, 0, 0),
  }) : super(key: key);

  static double width = 200;
  static double height = 280;

  static Widget skeletonWidget() {
    return SkeletonLine(
      style: SkeletonLineStyle(
        height: height,
        width: width,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final int maxLines = title.isNotEmpty && subtitle.isNotEmpty ? 1 : 2;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.fromBorderSide(
          BorderSide(
            color: theme.colorScheme.surfaceVariant,
          ),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
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
                            image: CachedNetworkImageProvider(photoBackground),
                          )
                        : null,
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          title,
                          maxLines: maxLines,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.inverseSurface,
                          ),
                        ),
                      ),
                    if (subtitle.isNotEmpty)
                      Text(
                        subtitle,
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
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
