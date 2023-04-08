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
        .any((extension) => photo.toLowerCase().endsWith(extension));
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
    const avatarWidth = 27.0;

    if (avatars.isEmpty) {
      return const RecupCircleAvatar(
        name: 'X',
      );
    }

    return SizedBox(
      width: 94,
      height: 40,
      child: Stack(
        children: List.generate(
          avatars.length,
          (index) => Positioned(
            left: index * avatarWidth,
            child: RecupCircleAvatar(photo: avatars[index]),
          ),
        ),
      ),
    );
  }
}
