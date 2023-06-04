part of 'package:recup_storybook/recup_storybook.dart';

class RecupAvatars extends StatefulWidget {
  final List<String> images;
  const RecupAvatars({Key? key, this.images = const []}) : super(key: key);

  @override
  State<RecupAvatars> createState() => _RecupAvatarsState();
}

class _RecupAvatarsState extends State<RecupAvatars> {
  late final List<String> avatars;

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
  void initState() {
    const maxAvatars = 3;
    final imagesValid = widget.images.where((image) => isPhoto(image));
    avatars = imagesValid.take(maxAvatars).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const avatarWidth = 25.0;
    const avatarSpacing = avatarWidth + 10;
    final theme = Theme.of(context);
    final totalWidth = avatarSpacing * avatars.length;

    if (avatars.isEmpty) {
      return const RecupCircleAvatar(
        name: 'X',
      );
    }

    return SizedBox(
      height: 40,
      width: totalWidth,
      child: Stack(
        children: List.generate(
          avatars.length,
          (index) => Positioned(
            left: index * avatarWidth,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: theme.colorScheme.background,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: RecupCircleAvatar(
                radius: 17,
                photo: avatars[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
