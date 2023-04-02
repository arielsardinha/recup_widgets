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
                      onPressedHeaderIconButton: context.knobs.boolean(
                        label: "onPressedHeaderIconButton",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                      iconHeader: const Icon(Icons.settings),
                      title: context.knobs.text(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: 'Ariel Sardinha',
                      ),
                      textCenter: context.knobs.text(
                        label: "textCenter",
                        initialValue: '+100',
                      ),
                      iconCenter: context.knobs.boolean(
                        label: "iconCenter",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.clear,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      iconFromButtom: Icons.add,
                      textButton: context.knobs.text(
                        label: "textButton",
                        initialValue: 'Enabled',
                      ),
                      onPressedButton: context.knobs.boolean(
                        label: "onPressedButton",
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
                      onPressedHeaderIconButton: context.knobs.boolean(
                        label: "onPressedHeaderIconButton",
                        initialValue: false,
                      )
                          ? () {}
                          : null,
                      iconHeader: context.knobs.boolean(
                        label: "iconHeader",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.delete_outline,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      title: context.knobs.text(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: 'Ariel Sardinha',
                      ),
                      textCenter: context.knobs.text(
                        label: "textCenter",
                        initialValue: '+100',
                      ),
                      iconCenter: context.knobs.boolean(
                        label: "iconCenter",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.clear,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      iconFromButtom: Icons.sensors_outlined,
                      textButton: context.knobs.text(
                        label: "textButton",
                        initialValue: 'Depositar',
                      ),
                      onPressedButton: context.knobs.boolean(
                        label: "onPressedButton",
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
                      onPressedHeaderIconButton: context.knobs.boolean(
                        label: "onPressedHeaderIconButton",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                      iconHeader: context.knobs.boolean(
                        label: "iconHeader",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.favorite,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      title: context.knobs.text(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: 'Ariel Sardinha',
                      ),
                      textCenter: context.knobs.text(
                        label: "textCenter",
                        initialValue: '3,54 €',
                      ),
                      iconCenter: context.knobs.boolean(
                        label: "iconCenter",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.volunteer_activism_outlined,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      iconFromButtom: Icons.circle_outlined,
                      textButton: context.knobs.text(
                        label: "textButton",
                        initialValue: 'Ativar',
                      ),
                      onPressedButton: context.knobs.boolean(
                        label: "onPressedButton",
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
                      onPressedHeaderIconButton: context.knobs.boolean(
                        label: "onPressedHeaderIconButton",
                        initialValue: true,
                      )
                          ? () {}
                          : null,
                      iconHeader: context.knobs.boolean(
                        label: "iconHeader",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.favorite,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      title: context.knobs.text(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: 'Ariel Sardinha',
                      ),
                      textCenter: context.knobs.text(
                        label: "textCenter",
                        initialValue: '3,54 €',
                      ),
                      iconCenter: context.knobs.boolean(
                        label: "iconCenter",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.volunteer_activism_outlined,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      iconFromButtom: Icons.check_circle_outline,
                      textButton: context.knobs.text(
                        label: "textButton",
                        initialValue: 'Ativar',
                      ),
                      isPrimaryContainerColorButton: context.knobs.boolean(
                        label: 'isPrimaryContainerColorButton',
                        initialValue: true,
                      ),
                      onPressedButton: context.knobs.boolean(
                        label: "onPressedButton",
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
