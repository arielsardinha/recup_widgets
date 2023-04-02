part of 'package:exemple/main.dart';

abstract class _StorybookMolecules {
  static final storybookMolecules = WidgetbookCategory(
    name: 'molecules',
    widgets: [
      WidgetbookComponent(
        name: 'Card Header',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return RecupCardHeader(
                title: context.knobs.text(
                  label: 'title',
                  initialValue: 'Sunt duis ea excepteur duis.',
                ),
                subtitle: context.knobs.text(
                  label: 'subtitle',
                  initialValue: 'Sunt duis ea excepteur duis.',
                ),
                nameAvatar: context.knobs.text(
                  label: 'nameAvatar',
                  initialValue: 'Ariel Sardinha',
                ),
                photo: context.knobs.text(
                  label: 'photo',
                  initialValue: 'https://github.com/arielsardinha.png',
                ),
              );
            },
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Carousel',
        useCases: [
          WidgetbookUseCase(
            name: 'Default',
            builder: (context) {
              return RecupCarousel(
                height: context.knobs.options(
                  label: "height",
                  options: const [
                    Option(
                      label: "NORMAL",
                      value: RecupCarouselSize.NORML,
                    ),
                    Option(
                      label: "LARGE",
                      value: RecupCarouselSize.LARGE,
                    )
                  ],
                ),
                images: const [
                  'https://github.com/arielsardinha.png',
                  'https://github.com/treinaweb.png',
                ],
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
                  onPressed: () {},
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
              return const RecupAvatars(
                images: [
                  'https://github.com/arielsardinha.png',
                  'https://github.com/treinaweb.png',
                  'https://github.com/recup.png',
                ],
              );
            },
          ),
        ],
      ),
    ],
  );
}
