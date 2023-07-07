part of 'package:recup_storybook/recup_storybook.dart';

class RecupDivider extends StatelessWidget {
  const RecupDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Divider(),
    );
  }
}
