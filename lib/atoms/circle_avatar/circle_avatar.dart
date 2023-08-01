part of 'package:recup_storybook/recup_storybook.dart';

class RecupCircleAvatar extends StatelessWidget with ImageValidationMixin {
  final String name;
  final String photo;
  final Color? backgroundColor;
  final Color? borderColor;
  final double radius;
  final bool loading;
  final VoidCallback? onTap;
  final BoxFit fit;
  final double borderSize;

  const RecupCircleAvatar({
    super.key,
    this.name = '',
    this.photo = '',
    this.backgroundColor,
    this.radius = 20,
    this.loading = false,
    this.onTap,
    this.fit = BoxFit.cover,
    this.borderSize = 1,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final double size = radius * 2;

    if (loading) {
      return SkeletonAvatar(
        style: SkeletonAvatarStyle(
          width: size,
          height: size,
          shape: BoxShape.circle,
        ),
      );
    }

    final sizeScale = (size / 40);

    var child = name.isNotEmpty && !isPhotoValidUri(photo)
        ? Center(
            child: Text(
              name[0].toUpperCase(),
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
                fontSize:
                    (theme.textTheme.labelLarge?.fontSize ?? 16.0) * sizeScale,
              ),
            ),
          )
        : null;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(borderSize),
        decoration: BoxDecoration(
            color: borderColor ?? theme.colorScheme.outlineVariant,
            shape: BoxShape.circle
            // borderRadius: BorderRadius.circular(50 * sizeScale),
            ),
        child: CircleAvatar(
          radius: (size - borderSize) * 0.5,
          backgroundImage: isPhotoValidUri(photo) ? CachedNetworkImageProvider(photo) : null,
          backgroundColor:
              backgroundColor ?? theme.colorScheme.primaryContainer,
          foregroundColor: theme.colorScheme.primary,
          child: child,
        ),
      ),
    );
  }
}
