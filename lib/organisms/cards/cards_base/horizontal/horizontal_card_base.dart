part of 'package:recup_storybook/recup_storybook.dart';

class RecupHorizontalCardBase extends StatelessWidget {
  final String textButton, title, subtitle, text, photo;
  final void Function()? onPressedButton, onPressedIcon;
  const RecupHorizontalCardBase({
    super.key,
    this.textButton = '',
    this.title = '',
    this.subtitle = '',
    this.text = '',
    this.onPressedButton,
    this.onPressedIcon,
    this.photo = '',
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(photo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(title),
                  subtitle: Text(subtitle),
                  trailing: IconButton(
                    onPressed: onPressedIcon,
                    icon: const Icon(Icons.settings),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    text,
                    style: theme.textTheme.labelLarge
                        ?.copyWith(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(right: 16),
                  child: ElevatedButton(
                    onPressed: onPressedButton,
                    child: Text(textButton),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
