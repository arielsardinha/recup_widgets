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
    this.selected = false,
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

    final hasWidget = widget != null;

    return InputChip(
      label: Visibility(
        visible: text.isNotEmpty,
        child: Text(
          text,
        ),
      ),
      onSelected: onSelected,
      showCheckmark: showCheckmark,
      avatar: hasWidget ? widget : null,
      visualDensity: VisualDensity.compact,
      labelPadding: hasWidget && text.isNotEmpty
          ? const EdgeInsets.only(right: 8)
          : EdgeInsets.zero,
      padding: EdgeInsets.symmetric(horizontal: hasWidget ? 2 : 8),
      // padding: EdgeInsets.zero,
      isEnabled: !disabled,
      selected: selected,
      selectedColor: Theme.of(context).colorScheme.primaryContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }
}
