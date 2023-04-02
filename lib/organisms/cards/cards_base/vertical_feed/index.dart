part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalFeedCard extends StatelessWidget {
  final String nameAvatar, titleHeader, subtitleHeader, photoHeader;
  final List<String> backgroundImage, avatars;

  final Widget? children;
  final Widget? trailingHeader;
  const RecupCardVerticalFeedCard({
    super.key,
    this.nameAvatar = '',
    this.titleHeader = '',
    this.subtitleHeader = '',
    this.backgroundImage = const [],
    this.photoHeader = '',
    this.avatars = const [],
    this.children,
    this.trailingHeader,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Column(
        children: [
          RecupCardHeader(
            nameAvatar: nameAvatar,
            title: titleHeader,
            subtitle: subtitleHeader,
            photo: photoHeader,
            trailing: trailingHeader,
          ),
          RecupCarousel(
            images: backgroundImage,
          ),
          children ?? const SizedBox(),
        ],
      ),
    );
  }
}
