part of 'package:exemple/main.dart';

abstract class _StorybookOrganismis {
  static final organismisbookMolecules = WidgetbookCategory(
    name: 'organisms',
    folders: [
      WidgetbookFolder(
        name: 'Cards',
        widgets: [
          WidgetbookComponent(
            name: 'Horizontal Card Base',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) {
                  return RecupHorizontalCardBase(
                    title: context.knobs.text(
                      label: 'title',
                      initialValue: 'Header',
                    ),
                    subtitle: context.knobs.text(
                      label: 'subtitle',
                      initialValue: 'subtitle',
                    ),
                    text: context.knobs.text(
                      label: 'text',
                      initialValue: 'text',
                    ),
                    textButton: context.knobs.text(
                      label: 'textButton',
                      initialValue: 'Enabled',
                    ),
                    onPressedButton:
                        context.knobs.boolean(label: 'onPressedButton')
                            ? null
                            : () {},
                    onPressedIcon: context.knobs.boolean(label: 'onPressedIcon')
                        ? null
                        : () {},
                    photo: context.knobs.text(
                      label: 'photo',
                      initialValue: 'https://github.com/recup.png',
                    ),
                  );
                },
              ),
            ],
          ),
          WidgetbookComponent(
            name: 'vertical feed',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) {
                  return RecupVerticalFeedCard(
                    backgroundImage: const [
                      'https://github.com/arielsardinha.png',
                      'https://github.com/treinaweb.png',
                      'https://github.com/recup.png',
                    ],
                    avatars: const [
                      'https://github.com/arielsardinha.png',
                      'https://github.com/treinaweb.png',
                      'https://github.com/recup.png',
                    ],
                    nameAvatar: context.knobs.text(
                      label: 'nameAvatar',
                      initialValue: 'Ariel Sardinha',
                    ),
                    photoHeader: context.knobs.text(
                      label: 'photoHeader',
                      initialValue: 'https://github.com/arielsardinha.png',
                    ),
                    titleHeader: context.knobs.text(
                      label: 'titleHeader',
                      initialValue: 'Title Header',
                    ),
                    subtitleHeader: context.knobs.text(
                      label: 'subtitleHeader',
                      initialValue: 'Subtitle Header',
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      )
    ],
  );
}
