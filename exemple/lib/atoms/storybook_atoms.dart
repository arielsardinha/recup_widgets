part of 'package:exemple/main.dart';

abstract class _StorybookAtoms {
  static final atomsStorybook = WidgetbookCategory(
    name: 'atoms',
    folders: [
      WidgetbookFolder(
        name: "Badges",
        widgets: [
          WidgetbookComponent(
            name: "Standard",
            useCases: [
              WidgetbookUseCase(
                name: "Default",
                builder: (context) {
                  return Center(
                    child: RecupStandard(
                      text: context.knobs
                          .text(label: "text", initialValue: "text"),
                      widget: context.knobs
                              .boolean(label: "widget", initialValue: true)
                          ? const Icon(
                              Icons.clear,
                              size: 16,
                            )
                          : null,
                      color: context.knobs.options(
                        label: "color",
                        options: const [
                          Option(
                            label: "PRIMARY",
                            value: RecupStandardColor.PRIMARY,
                          ),
                          Option(
                            label: "ERROR",
                            value: RecupStandardColor.ERROR,
                          ),
                        ],
                      ),
                      width:
                          double.tryParse(context.knobs.text(label: "width")),
                    ),
                  );
                },
              )
            ],
          ),
          WidgetbookComponent(
            name: "Status",
            useCases: [
              WidgetbookUseCase(
                name: "Default",
                builder: (context) {
                  return Center(
                    child: RecupStatus(
                      width:
                          double.tryParse(context.knobs.text(label: "width")),
                      text: context.knobs
                          .text(label: "text", initialValue: "text"),
                      color: context.knobs.options(
                        label: "color",
                        options: const [
                          Option(
                            label: "UNVAILABLO",
                            value: RecupStatusColor.UNVAILABLO,
                          ),
                          Option(
                            label: "AVAILABLE",
                            value: RecupStatusColor.AVAILABLE,
                          ),
                          Option(
                            label: "OPERATING",
                            value: RecupStatusColor.OPERATING,
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      )
    ],
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
      ),
      WidgetbookComponent(
        name: "Input Chip",
        useCases: [
          WidgetbookUseCase(
            name: "Default",
            builder: (context) {
              final disabled = context.knobs.boolean(label: "disabled");

              return Center(
                child: RecupInputChip(
                  text: context.knobs.text(
                    label: "text",
                    initialValue: "123",
                  ),
                  widget: context.knobs.boolean(
                    label: "widget",
                    initialValue: true,
                  )
                      ? Icon(
                          Icons.clear,
                          color: disabled
                              ? Theme.of(context).colorScheme.outlineVariant
                              : null,
                        )
                      : null,
                  disabled: disabled,
                ),
              );
            },
          )
        ],
      ),
    ],
  );
}
