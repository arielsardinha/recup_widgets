part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalSuggestion extends StatelessWidget {
  final String title,
      subtitle,
      photoBackground,
      photoAvatar,
      nameAvatar,
      textContent;
  final Widget? child;
  final void Function()? onTap;
  final Color? backgroundColorAvatar, backgroundColor;
  final double? textContentMaxWidth;
  final RecupStatusColor textContentColor;

  const RecupCardVerticalSuggestion({
    Key? key,
    this.onTap,
    this.title = '',
    this.subtitle = '',
    this.child,
    this.photoBackground = '',
    this.photoAvatar = '',
    this.nameAvatar = '',
    this.textContent = '',
    this.backgroundColorAvatar,
    this.textContentMaxWidth,
    this.textContentColor = RecupStatusColor.AVAILABLE,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 200,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.fromBorderSide(
          BorderSide(
            color: theme.colorScheme.surfaceVariant,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 140,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(photoBackground),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: RecupCircleAvatar(
                      photo: photoAvatar,
                      name: nameAvatar,
                      backgroundColor: backgroundColorAvatar,
                    ),
                  )
                ],
              ),
              if (subtitle.isNotEmpty || title.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: title.isNotEmpty
                        ? Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        : null,
                    subtitle: subtitle.isNotEmpty
                        ? Text(
                            subtitle,
                            maxLines: textContent.isNotEmpty ? 1 : 2,
                            overflow: TextOverflow.ellipsis,
                          )
                        : null,
                  ),
                ),
              if (textContent.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RecupStatus(
                    text: textContent,
                    width: textContentMaxWidth,
                    color: textContentColor,
                  ),
                ),
            ],
          ),
          const Spacer(),
          if (child != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: child!,
            )
        ],
      ),
    );
  }
}
