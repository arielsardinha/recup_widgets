part of 'package:recup_storybook/recup_storybook.dart';

class RecupInputChip extends StatelessWidget {
  final String text;
  final Widget? widget;
  final bool disabled, loading, selected, showCheckmark;
  final void Function(bool)? onSelected;

  const RecupInputChip({
    Key? key,
    this.text = '',
    this.widget,
    this.disabled = false,
    this.loading = false,
    this.onSelected,
    this.selected = true,
    this.showCheckmark = false,
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

    var icon = widget;
    if (widget is Icon) {
      final i = widget as Icon;
      icon = Icon(
        i.icon,
        color:
        disabled ? null : i.color ?? Theme
            .of(context)
            .colorScheme
            .primary,
        size: pi * 30 / 4.0,
      );
    }

    final hasWidget = icon != null;

    final chip = InputChip(
      label:  SizedBox(
        width: hasWidget || text.length > 1 ? null : pi * 10,
        child: text.isNotEmpty ? Padding(
          padding: hasWidget
              ? const EdgeInsets.only(right: 8)
              : const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ) : null,
      ),
      avatar: hasWidget ? icon : null,
      onSelected: onSelected ?? (x) {},
      showCheckmark: showCheckmark,
      visualDensity: VisualDensity.compact,
      labelPadding: hasWidget && text.isNotEmpty
          ? const EdgeInsets.only(left: 0, right: 4)
          : EdgeInsets.zero,
      padding: const EdgeInsets.symmetric(horizontal: -2, vertical: 0),
      isEnabled: !disabled,
      selected: selected,
      selectedColor: Theme
          .of(context)
          .colorScheme
          .primaryContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );

    return chip;
  }
}
