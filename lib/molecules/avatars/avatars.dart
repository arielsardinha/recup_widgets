part of 'package:recup_storybook/recup_storybook.dart';

class RecupAvatars extends StatefulWidget {
  final List<String> images;
  const RecupAvatars({Key? key, this.images = const []}) : super(key: key);

  @override
  State<RecupAvatars> createState() => _RecupAvatarsState();
}

class _RecupAvatarsState extends State<RecupAvatars> with ImageValidationMixin {
  late final List<String> avatars;

  @override
  void initState() {
    const maxAvatars = 3;
    final imagesValid = widget.images.where((image) => isPhoto(image));
    avatars = imagesValid.take(maxAvatars).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const avatarWidth = 25.0;
    const avatarSpacing = 25;

    if (avatars.isEmpty) {
      return const RecupCircleAvatar(
        name: 'X',
      );
    }

    final totalWidth = avatarSpacing * avatars.length + 15;

    return SizedBox(
      height: 40,
      width: totalWidth.toDouble(),
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
