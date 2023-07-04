part of 'package:recup_storybook/recup_storybook.dart';

class RecupElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final RecupButtonStyle? recupButtonStyle;

  const RecupElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.recupButtonStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    TextStyle? handleTextStyle(VisualDensityButton visualDensityButton) {
      switch (visualDensityButton) {
        case VisualDensityButton.standard:
          return theme.textTheme.titleMedium;
        case VisualDensityButton.comfortable:
          return theme.textTheme.titleSmall;
        case VisualDensityButton.compact:
          return theme.textTheme.labelSmall;
        default:
          return null;
      }
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: recupButtonStyle?.backgroundColor,
        visualDensity: recupButtonStyle?.visualDensityButton.visualDensity ??
            VisualDensityButton.standard.visualDensity,
        textStyle: handleTextStyle(
            recupButtonStyle?.visualDensityButton ?? VisualDensityButton.standard),
      ),
      child: child,
    );
  }
}
