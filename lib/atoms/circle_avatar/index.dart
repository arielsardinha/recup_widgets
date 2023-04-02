part of 'package:recup_storybook/recup_storybook.dart';

class RecupCircleAvatar extends StatelessWidget {
  final String name;
  final String photo;
  const RecupCircleAvatar({super.key, this.name = '', this.photo = ''});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
      backgroundColor: theme.colorScheme.primaryContainer,
      foregroundColor: theme.colorScheme.primary,
      backgroundImage: !isPhoto(photo) ? null : NetworkImage(photo),
      child: name.isEmpty || isPhoto(photo)
          ? null
          : Text(
              name[0].toUpperCase(),
              style: theme.textTheme.labelLarge,
            ),
    );
  }
}
