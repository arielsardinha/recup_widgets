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
                  return Center(
                    child: RecupCardVerticalFeedCard(
                      backgroundImages: const [
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
          WidgetbookComponent(
            name: 'Vertical Suggestion',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalSuggestion(
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      titulo: context.knobs.text(
                        label: "titulo",
                        initialValue: "titulo",
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: "subtitle",
                      ),
                      photoBackground: context.knobs.text(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.text(
                        label: "textContent",
                        initialValue: "textContent",
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.light_mode_outlined,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text('Label')
                            ],
                          ),
                          Icon(
                            Icons.settings,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Product category',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalSuggestion(
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      titulo: context.knobs.text(
                        label: "titulo",
                        initialValue: "titulo",
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: "subtitle",
                      ),
                      photoBackground: context.knobs.text(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.text(
                        label: "textContent",
                        initialValue: "",
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text('0,3 km')
                            ],
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Collection poing',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalSuggestion(
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      titulo: context.knobs.text(
                        label: "titulo",
                        initialValue: "titulo",
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: "",
                      ),
                      photoBackground: context.knobs.text(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.text(
                        label: "textContent",
                        initialValue: "Rebox One • Disponivel",
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text('0,3 km')
                            ],
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Donation',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalSuggestion(
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      titulo: context.knobs.text(
                        label: "titulo",
                        initialValue: "titulo",
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: "subtitle",
                      ),
                      photoBackground: context.knobs.text(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.text(
                        label: "textContent",
                        initialValue: "",
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.person,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text('728')
                            ],
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Offer',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalSuggestion(
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      titulo: context.knobs.text(
                        label: "titulo",
                        initialValue: "titulo",
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: "subtitle",
                      ),
                      photoBackground: context.knobs.text(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.text(
                        label: "textContent",
                        initialValue: "",
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.highlight_remove_outlined,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text('200')
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Offer actived',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalSuggestion(
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      titulo: context.knobs.text(
                        label: "titulo",
                        initialValue: "titulo",
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: "subtitle",
                      ),
                      photoBackground: context.knobs.text(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.text(
                        label: "textContent",
                        initialValue: "",
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.local_activity_outlined,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Cupom')
                              ],
                            ),
                          ),
                          Icon(
                            Icons.login,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      )
    ],
  );
}
