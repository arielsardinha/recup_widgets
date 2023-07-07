part of 'package:exemple/main.dart';

abstract class _StorybookMolecules {
  static final storybookMolecules = WidgetbookCategory(
    name: 'molecules',
    isInitiallyExpanded: false,
    children: [
      _carrousel,
      _formFields,
      _button,
      _avatars,
    ],
  );

  static final _carrousel = WidgetbookComponent(
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
  );

  static final _formFields = WidgetbookComponent(
    name: 'Form Fields',
    useCases: [
      WidgetbookUseCase(
        name: 'Base',
        builder: (context) {
          final controller = TextEditingController(
            text: context.knobs.string(label: 'initialValue'),
          );

          return Center(
            child: RecupTextFormField(
              controller: controller,
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
              maxLength: int.tryParse(
                context.knobs.string(
                  label: "maxLength",
                  initialValue: "15",
                ),
              ),
              prefixIcon: context.knobs.boolean(
                label: 'prefixIcon',
                initialValue: true,
              )
                  ? const Icon(
                      RecupIcon.my_location,
                    )
                  : null,
              suffixIcon: context.knobs.boolean(
                label: 'suffixIcon',
                initialValue: true,
              )
                  ? const Icon(
                      RecupIcon.lock_password,
                    )
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'Text Form Field',
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
  );

  static final _button = WidgetbookFolder(
    name: 'Recup Button',
    children: [
      WidgetbookComponent(
        name: 'Standard',
        isInitiallyExpanded: false,
        useCases: _StandardButtons.standartButtons,
      ),
      _CustomButtons.radioListTile,
    ],
  );

  static final _avatars = WidgetbookComponent(
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
  );
}
