part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardHorizontalActionImage extends StatelessWidget {
  final String photoBackground;
  final void Function()? onPressed;

  const RecupCardHorizontalActionImage({
    super.key,
    this.onPressed,
    this.photoBackground = '',
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 156,
      child: Material(
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: onPressed,
          child: Ink(
            decoration: BoxDecoration(
              color: theme.colorScheme.background,
              borderRadius: BorderRadius.circular(20),
              border: Border.fromBorderSide(
                BorderSide(
                  color: theme.colorScheme.surfaceVariant,
                ),
              ),
              image: DecorationImage(
                image: NetworkImage(photoBackground),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
