part of 'package:exemple/main.dart';

abstract class _StorybookAtoms {
  static final atomsStorybook = WidgetbookCategory(
    name: 'atoms',
    isInitiallyExpanded: false,
    children: [
      WidgetbookFolder(
        name: "Badges",
        children: [
          WidgetbookComponent(
            name: "Standard",
            useCases: [
              WidgetbookUseCase(
                name: "Default",
                builder: (context) {
                  return Center(
                    child: RecupStandard(
                      text: context.knobs
                          .string(label: "text", initialValue: "text"),
                      widget: context.knobs
                              .boolean(label: "widget", initialValue: true)
                          ? const Icon(
                              Icons.clear,
                              size: 16,
                            )
                          : null,
                      color: context.knobs.list(
                        label: "color",
                        options: const [
                          RecupStandardColor.PRIMARY,
                          RecupStandardColor.ERROR
                        ],
                      ),
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
                          double.tryParse(context.knobs.string(label: "width")),
                      text: context.knobs
                          .string(label: "text", initialValue: "text"),
                      color: context.knobs.list(
                        label: "color",
                        options: const [
                          RecupStatusColor.UNVAILABLO,
                          RecupStatusColor.AVAILABLE,
                          RecupStatusColor.OPERATING
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Slider Points',
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
                  loading: context.knobs.boolean(label: "loading"),
                  name: context.knobs.string(
                    label: 'Ariel',
                    initialValue: 'Ariel Sardinha',
                  ),
                  photo: context.knobs.string(
                    label: 'photo',
                    initialValue: 'https://github.com/arielsardinha.png',
                  ),
                  radius: double.tryParse(context.knobs.string(
                    label: 'radius',
                    initialValue: "",
                  )),
                  backgroundColor: context.knobs.list(
                    label: "backgroundColor",
                    options: const [
                      Colors.blue,
                      Colors.red,
                      null,
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
                  loading: context.knobs.boolean(label: "loading"),
                  text: context.knobs.string(
                    label: "text",
                    initialValue: "123",
                  ),
                  widget: context.knobs.boolean(
                    label: "widget",
                    initialValue: true,
                  )
                      ? Icon(
                          Icons.circle,
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
