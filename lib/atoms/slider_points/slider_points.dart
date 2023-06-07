part of 'package:recup_storybook/recup_storybook.dart';

class RecupSliderPoints extends StatelessWidget {
  final List<String> points;
  final Function()? onTap;
  final int currentPoint;
  const RecupSliderPoints({
    super.key,
    required this.points,
    required this.currentPoint,
    this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: points.asMap().entries.map(
        (entry) {
          return GestureDetector(
            onTap: onTap,
            child: Container(
              width: 9.0,
              height: 9.0,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.colorScheme.primaryContainer
                    .withOpacity(currentPoint == entry.key ? 1 : 0.4),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
