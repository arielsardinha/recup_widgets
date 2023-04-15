part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardHorizontalCardAds extends StatelessWidget {
  final String textButton, title, subtitle, text, photo;
  final void Function()? onPressedButton;
  final Widget? leading;
  const RecupCardHorizontalCardAds({
    super.key,
    this.textButton = '',
    this.title = '',
    this.subtitle = '',
    this.text = '',
    this.onPressedButton,
    this.photo = '',
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 156,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.fromBorderSide(
          BorderSide(
            color: theme.colorScheme.surfaceVariant,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 160,
            decoration: BoxDecoration(
              color: theme.colorScheme.background,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              image: DecorationImage(
                image: NetworkImage(photo),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(title),
                  subtitle: Text(subtitle),
                  leading: leading,
                ),
                if (text.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RecupStandard(
                      width: MediaQuery.of(context).size.width * 0.1,
                      text: text,
                    ),
                  ),
                const Spacer(),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(right: 16, bottom: 16),
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
