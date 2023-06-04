part of 'package:exemple/main.dart';

abstract class _StorybookMolecules {
  static final storybookMolecules = WidgetbookCategory(
    name: 'molecules',
    widgets: [
      WidgetbookComponent(
        name: 'Carousel',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return Center(
                child: RecupCarousel(
                  height: context.knobs.options(
                    label: "height",
                    options: const [
                      Option(
                        label: "NORMAL",
                        value: RecupCarouselSize.NORMAL,
                      ),
                      Option(
                        label: "LARGE",
                        value: RecupCarouselSize.LARGE,
                      ),
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
                  hintText: context.knobs.text(
                    label: "hintText",
                    initialValue: "hintText",
                  ),
                  label: context.knobs.text(
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
        name: 'ElevatedButton',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return Center(
                child: ElevatedButton(
                  onPressed:
                      context.knobs.boolean(label: "onPressed") ? () {} : null,
                  child: const Text(
                    'Elevated Button',
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
