part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardVerticalAction extends StatelessWidget {
  final String photoAvatar, nameAvatar, title, subtitle, textCenter, textButton;
  final Widget? iconCenter, iconButtonHeader;
  final void Function()? onPressedButton;
  final bool isActive;
  final Color? backgroundColorAvatar;

  const RecupCardVerticalAction({
    super.key,
    this.photoAvatar = '',
    this.nameAvatar = '',
    this.iconButtonHeader,
    this.title = '',
    this.subtitle = '',
    this.textCenter = '',
    this.iconCenter,
    this.textButton = '',
    required this.onPressedButton,
    this.isActive = false,
    this.backgroundColorAvatar,
  });

  static double height = 216;
  static double width = 168;

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
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.fromBorderSide(
          BorderSide(
            color: theme.colorScheme.surfaceVariant,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RecupCircleAvatar(
                      photo: photoAvatar,
                      name: nameAvatar,
                      backgroundColor: backgroundColorAvatar,
                    ),
                    if (iconButtonHeader != null) iconButtonHeader!
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Visibility(
                      visible: !(title.isEmpty && subtitle.isEmpty),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        title: title.isNotEmpty
                            ? Text(
                                title,
                                maxLines: 2,
                                style: theme.textTheme.titleMedium,
                              )
                            : null,
                        subtitle: subtitle.isNotEmpty
                            ? Text(
                                subtitle,
                                maxLines: 1,
                                style: theme.textTheme.bodySmall,
                              )
                            : null,
                      ),
                    ),
                    Visibility(
                      visible: iconCenter != null || textCenter.isNotEmpty,
                      child: Row(
                        children: [
                          if (iconCenter != null) iconCenter!,
                          if (iconCenter != null)
                            const SizedBox(
                              width: 4,
                            ),
                          Text(
                            textCenter,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: RecupFilledButton(
              onPressed: onPressedButton,
              recupButtonStyle: RecupButtonStyle(
                visualDensityButton: VisualDensityButton.comfortable,
              ),
              child: Text(
                textButton,
                maxLines: 1,
                // style: theme.textTheme.titleSmall?.copyWith(
                //   color: isActive
                //       ? theme.colorScheme.onPrimaryContainer
                //       : theme.colorScheme.onPrimary,
                // ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
