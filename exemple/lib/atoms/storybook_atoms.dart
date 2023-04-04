part of 'package:exemple/main.dart';

abstract class _StorybookAtoms {
  static final atomsStorybook = WidgetbookCategory(
    name: 'atoms',
    widgets: [
      WidgetbookComponent(
        name: 'Slider Points',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return Center(
                child: RecupSliderPoints(
                  points: const ['', ''],
                  currentPoint: context.knobs.options(
                    label: 'currentPoint',
                    options: const [
                      Option(label: '0', value: 0),
                      Option(label: '1', value: 1),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
      WidgetbookComponent(
        name: 'Circle Avatar',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return Center(
                child: RecupCircleAvatar(
                  name: context.knobs.text(
                    label: 'Ariel',
                    initialValue: 'Ariel Sardinha',
                  ),
                  photo: context.knobs.text(
                    label: 'photo',
                    initialValue: 'https://github.com/arielsardinha.png',
                  ),
                  backgroundColor: context.knobs.options(
                    label: "backgroundColor",
                    options: const [
                      Option(label: "blue", value: Colors.blue),
                      Option(label: "red", value: Colors.red),
                      Option(
                        label: "default",
                        value: null,
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      )
    ],
  );
}
