part of 'package:exemple/main.dart';

abstract class _StorybookOrganismis {
  static final organismisbookMolecules = WidgetbookCategory(
    name: 'organisms',
    folders: [
      WidgetbookFolder(
        name: 'Cards',
        widgets: [
          WidgetbookComponent(
            name: 'Horizontal',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) {
                  return RecupCardHorizontalCardBase(
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
                  return RecupCardVerticalFeedCard(
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
          WidgetbookComponent(
            name: 'vertical action',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalAction(
                      onPressedIconButton: context.knobs.boolean(
                        label: "onPressedIconButton",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                      iconButton: const Icon(Icons.settings),
                      title: context.knobs.text(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photo: context.knobs.text(
                        label: "photo",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      name: context.knobs.text(
                        label: "name",
                        initialValue: 'Ariel Sardinha',
                      ),
                      text: context.knobs.text(
                        label: "text",
                        initialValue: '+100',
                      ),
                      icon: const Icon(Icons.clear),
                      iconFromButtom: Icons.add,
                      textButton: context.knobs.text(
                        label: "textButton",
                        initialValue: 'Enabled',
                      ),
                      onPressed: context.knobs.boolean(
                        label: "onPressed",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Deposit, Enabled',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalAction(
                      onPressedIconButton: context.knobs.boolean(
                        label: "onPressedIconButton",
                        initialValue: false,
                      )
                          ? () {}
                          : null,
                      iconButton: const Icon(Icons.delete_outline),
                      title: context.knobs.text(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photo: context.knobs.text(
                        label: "photo",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      name: context.knobs.text(
                        label: "name",
                        initialValue: 'Ariel Sardinha',
                      ),
                      text: context.knobs.text(
                        label: "text",
                        initialValue: '+100',
                      ),
                      icon: const Icon(Icons.clear),
                      iconFromButtom: Icons.sensors_outlined,
                      textButton: context.knobs.text(
                        label: "textButton",
                        initialValue: 'Depositar',
                      ),
                      onPressed: context.knobs.boolean(
                        label: "onPressed",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Donation, Enabled',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalAction(
                      onPressedIconButton: context.knobs.boolean(
                        label: "onPressedIconButton",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                      iconButton: Icon(
                        Icons.favorite,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: context.knobs.text(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photo: context.knobs.text(
                        label: "photo",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      name: context.knobs.text(
                        label: "name",
                        initialValue: 'Ariel Sardinha',
                      ),
                      text: context.knobs.text(
                        label: "text",
                        initialValue: '3,54 €',
                      ),
                      icon: Icon(
                        Icons.volunteer_activism_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      iconFromButtom: Icons.circle_outlined,
                      textButton: context.knobs.text(
                        label: "textButton",
                        initialValue: 'Ativar',
                      ),
                      onPressed: context.knobs.boolean(
                        label: "onPressed",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Donation, Actived',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalAction(
                      onPressedIconButton: context.knobs.boolean(
                        label: "onPressedIconButton",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                      iconButton: Icon(
                        Icons.favorite,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: context.knobs.text(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photo: context.knobs.text(
                        label: "photo",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      name: context.knobs.text(
                        label: "name",
                        initialValue: 'Ariel Sardinha',
                      ),
                      text: context.knobs.text(
                        label: "text",
                        initialValue: '3,54 €',
                      ),
                      icon: Icon(
                        Icons.volunteer_activism_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      iconFromButtom: Icons.check_circle_outline,
                      textButton: context.knobs.text(
                        label: "textButton",
                        initialValue: 'Ativar',
                      ),
                      isPrimaryContainerColorButton: context.knobs.boolean(
                        label: 'isPrimaryContainerColorButton',
                        initialValue: true,
                      ),
                      onPressed: context.knobs.boolean(
                        label: "onPressed",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
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
