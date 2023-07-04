part of 'package:exemple/main.dart';

abstract class _StorybookMolecules {
  static final storybookMolecules = WidgetbookCategory(
    name: 'molecules',
    children: [
      WidgetbookComponent(
        name: 'Carousel',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return Center(
                child: RecupCarousel(
                  height: context.knobs.list(
                    label: "height",
                    options: const [
                      RecupCarouselSize.NORMAL,
                      RecupCarouselSize.LARGE
                    ],
                  ),
                  noSliderPoints: context.knobs
                      .boolean(label: "noSliderPoints", initialValue: true),
                  itens: const [
                    'https://github.com/arielsardinha.png',
                    'https://github.com/treinaweb.png',
                  ].map((e) => RecupCarouselItem(image: e, item: e)).toList(),
                ),
              );
            },
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'TextFormField',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return Center(
                child: RecupTextFormField(
                  enabled: context.knobs.boolean(
                    label: "enabled",
                    initialValue: true,
                  ),
                  hintText: context.knobs.string(
                    label: "hintText",
                    initialValue: "hintText",
                  ),
                  label: context.knobs.string(
                    label: "label",
                    initialValue: "label",
                  ),
                ),
              );
            },
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Recup Button',
        useCases: [
          WidgetbookUseCase(
            name: 'Filled Button',
            builder: (context) {
              final knobVisualDensity = context.knobs.list(
                label: 'Visual Density',
                options: [
                  VisualDensityButton.standard,
                  VisualDensityButton.comfortable,
                  VisualDensityButton.compact
                ],
                labelBuilder: (value) => value.name,
              );

              return Center(
                child: RecupFilledButton(
                  recupButtonStyle: RecupButtonStyle(
                    visualDensityButton: knobVisualDensity,
                  ),
                  onPressed: context.knobs.boolean(
                    label: "onPressed",
                    initialValue: true,
                  )
                      ? () {}
                      : null,
                  child: Text(
                    context.knobs
                        .string(label: 'Text', initialValue: 'Button'),
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: 'Outlined Button',
            builder: (context) {
              final knobVisualDensity = context.knobs.list(
                label: 'Visual Density',
                options: [
                  VisualDensityButton.standard,
                  VisualDensityButton.comfortable,
                  VisualDensityButton.compact
                ],
                labelBuilder: (value) => value.name,
              );

              return Center(
                child: RecupOutlinedButton(
                  recupButtonStyle: RecupButtonStyle(
                    visualDensityButton: knobVisualDensity,
                  ),
                  onPressed: context.knobs.boolean(
                    label: "onPressed",
                    initialValue: true,
                  )
                      ? () {}
                      : null,
                  child: Text(
                    context.knobs
                        .string(label: 'Text', initialValue: 'Button'),
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: 'Text Button',
            builder: (context) {
              final knobVisualDensity = context.knobs.list(
                label: 'Visual Density',
                options: [
                  VisualDensityButton.standard,
                  VisualDensityButton.comfortable,
                  VisualDensityButton.compact
                ],
                labelBuilder: (value) => value.name,
              );

              return Center(
                child: RecupTextButton(
                  recupButtonStyle: RecupButtonStyle(
                    visualDensityButton: knobVisualDensity,
                  ),
                  onPressed: context.knobs.boolean(
                    label: "onPressed",
                    initialValue: true,
                  )
                      ? () {}
                      : null,
                  child: Text(
                    context.knobs
                        .string(label: 'Text', initialValue: 'Button'),
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: 'Elevated Button',
            builder: (context) {
              final knobVisualDensity = context.knobs.list(
                label: 'Visual Density',
                options: [
                  VisualDensityButton.standard,
                  VisualDensityButton.comfortable,
                  VisualDensityButton.compact
                ],
                labelBuilder: (value) => value.name,
              );

              return Center(
                child: RecupElevatedButton(
                  recupButtonStyle: RecupButtonStyle(
                    visualDensityButton: knobVisualDensity,
                  ),
                  onPressed: context.knobs.boolean(
                    label: "onPressed",
                    initialValue: true,
                  )
                      ? () {}
                      : null,
                  child: Text(
                    context.knobs
                        .string(label: 'Text', initialValue: 'Button'),
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: 'Tonal Button',
            builder: (context) {
              final knobVisualDensity = context.knobs.list(
                label: 'Visual Density',
                options: [
                  VisualDensityButton.standard,
                  VisualDensityButton.comfortable,
                  VisualDensityButton.compact
                ],
                labelBuilder: (value) => value.name,
              );

              return Center(
                child: RecupTonalButton(
                  recupButtonStyle: RecupButtonStyle(
                    visualDensityButton: knobVisualDensity,
                  ),
                  onPressed: context.knobs.boolean(
                    label: "onPressed",
                    initialValue: true,
                  )
                      ? () {}
                      : null,
                  child: Text(
                    context.knobs
                        .string(label: 'Text', initialValue: 'Button'),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Avatars',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return const Center(
                child: RecupAvatars(
                  images: [
                    'https://github.com/arielsardinha.png',
                    'https://github.com/treinaweb.png',
                    'https://github.com/recup.png',
                  ],
                ),
              );
            },
          ),
        ],
      ),
    ],
  );
}
