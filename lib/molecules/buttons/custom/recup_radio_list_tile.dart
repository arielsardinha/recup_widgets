part of 'package:recup_storybook/recup_storybook.dart';

class RecupRadioListTile extends StatelessWidget {
  final bool value;
  final String text;
  final Color? color;
  final String foto;
  final String name;
  final void Function(bool?)? onChanged;

  const RecupRadioListTile({
    Key? key,
    required this.text,
    required this.value,
    this.color,
    this.foto = '',
    this.name = '',
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RadioListTile<bool>(
      activeColor: theme.colorScheme.primary,
      contentPadding: const EdgeInsets.all(0),
      dense: true,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      value: value,
      groupValue: true,
      onChanged: onChanged,
      title: Row(
        children: [
          Visibility(
            visible: foto.isNotEmpty || name.isNotEmpty,
            child: RecupCircleAvatar(
              photo: foto,
              name: name,
              backgroundColor: color,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          )
        ],
      ),
    );
  }
}
