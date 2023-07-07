part of 'package:recup_storybook/recup_storybook.dart';

class RecupCircleAvatar extends StatelessWidget with ImageValidationMixin {
  final String name;
  final String photo;
  final Color? backgroundColor;
  final double? radius;
  final bool loading;
  final VoidCallback? onTap;
  final BoxFit? fit;

  const RecupCircleAvatar({
    super.key,
    this.name = '',
    this.photo = '',
    this.backgroundColor,
    this.radius,
    this.loading = false,
    this.onTap,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final double size = radius != null ? radius! * 2 : 40;

    if (loading) {
      return SkeletonAvatar(
        style: SkeletonAvatarStyle(
          width: size,
          height: size,
          shape: BoxShape.circle,
        ),
      );
    }

    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.transparent,
      child: Ink(
        width: size,
        height: size,
        decoration: BoxDecoration(
          image: isPhoto(photo)
              ? DecorationImage(image: NetworkImage(photo), fit: fit)
              : null,
          color: backgroundColor ?? theme.colorScheme.primaryContainer,
        ),
        child: InkWell(
          onTap: onTap,
          child: name.isEmpty || isPhoto(photo)
              ? null
              : Center(
                  child: Text(
                    name[0].toUpperCase(),
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      fontSize: (theme.textTheme.labelLarge?.fontSize ?? 16.0) *
                          (size / 40.0),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
