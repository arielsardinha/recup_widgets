part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardHeader extends StatelessWidget {
  final String nameAvatar;
  final String title;
  final String subtitle;
  final String photo;
  final void Function()? onPressed;
  final Widget? trailing;
  const RecupCardHeader({
    super.key,
    this.nameAvatar = '',
    this.title = '',
    this.subtitle = '',
    this.photo = '',
    this.onPressed,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title.isEmpty ? null : Text(title),
      subtitle: subtitle.isEmpty ? null : Text(subtitle),
      leading: RecupCircleAvatar(
        name: nameAvatar,
        photo: photo,
      ),
      trailing: trailing,
    );
  }
}
