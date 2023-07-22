part of 'package:exemple/main.dart';

abstract class _StorybookAtoms {
  static final atomsStorybook = WidgetbookCategory(
    name: 'atoms',
    isInitiallyExpanded: false,
    children: [
      AtomsBadges.badges,
      AtomChips.chips,
      _slider,
      AtomsAvatar.circleAvatar,
    ],
  );

  static final _slider = WidgetbookComponent(
    name: 'Slider Points',
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: 'Default',
        builder: (context) {
          return Center(
            child: RecupSliderPoints(
              points: const ['', ''],
              currentPoint: context.knobs.list(
                label: 'currentPoint',
                options: const [0, 1],
              ),
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Zoomed",
        builder: (context) {
          return Center(
            child: RecupSliderPoints(
              points: const ['', ''],
              currentPoint: context.knobs.list(
                label: 'currentPoint',
                options: const [0, 1],
              ),
            ),
          );
        },
      ),
    ],
  );
}
