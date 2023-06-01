part of 'package:recup_storybook/recup_storybook.dart';

class RecupInputChip extends StatelessWidget {
  final String text;
  final Widget? widget;
  final bool disabled, loading;
  final void Function(bool)? onSelected;
  const RecupInputChip({
    Key? key,
    this.text = '',
    this.widget,
    this.disabled = false,
    this.loading = false,
    this.onSelected,
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

    return InputChip(
      label: Text(text),
      onSelected: onSelected ?? (value) {},
      avatar: widget,
      visualDensity: VisualDensity.compact,
      labelPadding: const EdgeInsets.only(right: 8),
      padding: EdgeInsets.zero,
      isEnabled: !disabled,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }
}
