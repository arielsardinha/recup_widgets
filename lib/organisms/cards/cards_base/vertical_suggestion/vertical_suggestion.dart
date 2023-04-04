part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalSuggestion extends StatelessWidget {
  final String titulo,
      subtitle,
      photoBackground,
      photoAvatar,
      nameAvatar,
      textContent;
  final Widget? child;
  final void Function()? onTap;
  final Color? backgroundColorAvatar;

  const RecupCardVerticalSuggestion({
    Key? key,
    this.onTap,
    this.titulo = '',
    this.subtitle = '',
    this.child,
    this.photoBackground = '',
    this.photoAvatar = '',
    this.nameAvatar = '',
    this.textContent = '',
    this.backgroundColorAvatar,
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
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(photoBackground),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
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
              if (subtitle.isNotEmpty || titulo.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: titulo.isNotEmpty
                        ? Text(
                            titulo,
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
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: theme.colorScheme.surfaceVariant),
                  child: Text(
                    textContent,
                    maxLines: subtitle.isNotEmpty ? 1 : 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                )
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
