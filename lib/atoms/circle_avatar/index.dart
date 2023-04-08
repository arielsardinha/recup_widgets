part of 'package:recup_storybook/recup_storybook.dart';

class RecupCircleAvatar extends StatelessWidget {
  final String name;
  final String photo;
  final Color? backgroundColor;
  final double? radius;
  final bool loading;
  const RecupCircleAvatar({
    super.key,
    this.name = '',
    this.photo = '',
    this.backgroundColor,
    this.radius,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (loading) {
      return const SkeletonAvatar(
        style: SkeletonAvatarStyle(
          width: 40,
          height: 40,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      );
    }

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
          .any((extension) => photo.toLowerCase().endsWith(extension));
    }

    return CircleAvatar(
      backgroundColor: backgroundColor ?? theme.colorScheme.primaryContainer,
      foregroundColor: theme.colorScheme.primary,
      backgroundImage: !isPhoto(photo) ? null : NetworkImage(photo),
      radius: radius,
      child: name.isEmpty || isPhoto(photo)
          ? null
          : Text(
              name[0].toUpperCase(),
              style: theme.textTheme.labelLarge,
            ),
    );
  }
}
