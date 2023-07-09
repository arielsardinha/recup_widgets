part of 'package:recup_storybook/recup_storybook.dart';

class RecupFilterChip extends StatelessWidget {
  final String text;
  final IconData? leading, trailing;
  final bool enabled, loading, selected;
  final VoidCallback? onTap;
  final double iconSize;

  const RecupFilterChip({
    Key? key,
    required this.text,
    this.leading,
    this.trailing = RecupIcon.chevron_down,
    this.enabled = true,
    this.loading = false,
    this.selected = false,
    this.onTap,
    this.iconSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const SkeletonLine(
        style: SkeletonLineStyle(
          width: 80,
          height: 30,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          alignment: Alignment.center,
        ),
      );
    }

    const visualDensity = VisualDensity.compact;

    final children = <Widget>[
      if (leading != null)
        Icon(
          leading,
          color: Theme
              .of(context)
              .colorScheme
              .primary,
          size: iconSize,
        ),
      if (text.isNotEmpty)
        Padding(
          padding: EdgeInsets.only(
            right: leading != null ? 8 : 4,
            left: trailing != null ? 8 : 4,
          ),
          child: Text(
            text,
            style: Theme
                .of(context)
                .textTheme
                .titleSmall,
          ),
        ),
      if (trailing != null)
        Icon(
          trailing,
          color: Theme
              .of(context)
              .colorScheme
              .onSurface,
          size: iconSize,
        ),
    ];

    return InputChip(
      label: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: (pi * 10) + (visualDensity.horizontal * 2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
      onPressed: onTap,
      visualDensity: visualDensity,
      labelPadding: EdgeInsets.zero,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: children.length > 1 ? 6 : 0,
        vertical: 0,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      isEnabled: enabled,
      selected: selected,
      showCheckmark: false,
      selectedColor: Theme
          .of(context)
          .colorScheme
          .primaryContainer,
    );
  }
}
