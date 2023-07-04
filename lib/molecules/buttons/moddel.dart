part of 'package:recup_storybook/recup_storybook.dart';

enum VisualDensityButton {
  standard(visualDensity: VisualDensity(horizontal: 1, vertical: 1)),
  comfortable(visualDensity: VisualDensity.comfortable),
  compact(visualDensity: VisualDensity.compact);

  const VisualDensityButton({required this.visualDensity});

  final VisualDensity visualDensity;
}

final class RecupButtonStyle {
  final VisualDensityButton visualDensityButton;
  final Color? backgroundColor;

  RecupButtonStyle({
    this.visualDensityButton = VisualDensityButton.standard,
    this.backgroundColor,
  });
}
