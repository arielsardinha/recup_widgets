part of 'package:recup_storybook/recup_storybook.dart';

class RecupSwitchListTile extends StatelessWidget {
  final Widget title;
  final bool value;
  final void Function(bool)? onChanged;
  final bool divider;

  const RecupSwitchListTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.divider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          value: value,
          title: title,
          onChanged: onChanged,
        ),
        Visibility(visible: divider, child: const Divider())
      ],
    );
  }
}
