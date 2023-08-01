part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardHorizontalActionImage extends StatelessWidget with ImageValidationMixin {
  final String photoBackground;
  final void Function()? onPressed;

  const RecupCardHorizontalActionImage({
    super.key,
    this.onPressed,
    this.photoBackground = '',
  });

  static double height = 156;
  static double width = double.infinity;

  static Widget skeletonWidget() {
    return SkeletonLine(
      style: SkeletonLineStyle(
        height: height,
        width: width,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: height,
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
              image: isPhoto(photoBackground) ? DecorationImage(
                image: CachedNetworkImageProvider(photoBackground),
                fit: BoxFit.cover,
              ) : null,
            ),
          ),
        ),
      ),
    );
  }
}
