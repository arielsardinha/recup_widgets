part of 'package:recup_storybook/recup_storybook.dart';

class RecupListTile extends StatelessWidget {
  final String title;
  final IconData? leading;
  final IconData? trailing;
  final void Function()? onTap;
  final bool divider;

  const RecupListTile({
    Key? key,
    required this.title,
    this.leading,
    this.trailing,
    this.onTap,
    this.divider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          title: Text(title),
          leading: Icon(leading),
          trailing: Icon(trailing),
        ),
        Visibility(
          visible: divider,
          child: const Divider(),
        )
      ],
    );
  }
}
