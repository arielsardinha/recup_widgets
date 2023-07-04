part of 'package:exemple/main.dart';

abstract class _StorybookOrganismis {
  static final organismisbookMolecules = WidgetbookCategory(
    name: 'organisms',
    children: [
      WidgetbookFolder(
        name: 'Cards',
        children: [
          WidgetbookComponent(
            name: 'Horizontal Card Ads',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) {
                  return Center(
                    child: RecupCardHorizontalCardAds(
                      childButton: Text(
                          context.knobs.string(
                            label: 'Button Text',
                            initialValue: 'Text',
                          )
                      ),
                      title: context.knobs.string(
                        label: 'title',
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.string(
                        label: 'subtitle',
                        initialValue: 'subtitle',
                      ),
                      text: context.knobs.string(
                        label: 'text',
                        initialValue: 'text',
                      ),
                      onPressedButton:
                          context.knobs.boolean(label: 'onPressedButton')
                              ? null
                              : () {},
                      leading: context.knobs.boolean(label: 'leading')
                          ? null
                          : const Icon(
                              Icons.check_circle_outline_outlined,
                              size: 40,
                            ),
                      photoBackground: context.knobs.string(
                        label: 'photoBackground',
                        initialValue: 'https://github.com/recup.png',
                      ),
                      avatarPhoto: context.knobs.string(
                        label: 'avatarPhoto',
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      avatarName: context.knobs.string(
                        label: 'avatarName',
                        initialValue: 'ariel sardinha',
                      ),
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
                  final recoinsDisabled =
                      context.knobs.boolean(label: "recoinsDisabled");

                  return Center(
                    child: RecupCardVerticalFeedCard(
                      width:
                          double.tryParse(context.knobs.string(label: "width")),
                      noSliderPoints:
                          context.knobs.boolean(label: "noSliderPoints"),
                      carouselSize: context.knobs.list(
                        label: "carouselSize",
                        options: const [
                          RecupCarouselSize.NORMAL,
                          RecupCarouselSize.LARGE,
                        ],
                      ),
                      backgroundImages: RecupCardVerticalFeedBackground(
                          backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]
                              .map((e) => RecupCarouselItem(image: e, item: e))
                              .toList()),
                      nameAvatar: context.knobs.string(
                        label: 'nameAvatar',
                        initialValue: 'Ariel Sardinha',
                      ),
                      photoHeader: context.knobs.string(
                        label: 'photoHeader',
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      titleHeader: context.knobs.string(
                        label: 'titleHeader',
                        initialValue: 'Title Header',
                      ),
                      subtitleHeader: context.knobs.string(
                        label: 'subtitleHeader',
                        initialValue: 'Subtitle Header',
                      ),
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? const Icon(Icons.more_vert)
                              : null,
                      titleContent: context.knobs.string(
                        label: 'titleContent',
                        initialValue: 'titleContent',
                      ),
                      subtitleContent: context.knobs.string(
                        label: 'subtitleContent',
                        initialValue: 'subtitleContent',
                      ),
                      childContent: RecupStandard(
                        text: context.knobs.string(
                          label: 'childContent',
                          initialValue: 'Text',
                        ),
                      ),
                      recoins: context.knobs.string(
                        label: 'recoins',
                        initialValue: 'recoins',
                      ),
                      recoinsIcon: context.knobs
                              .boolean(label: "recoinsIcon", initialValue: true)
                          ? Icon(
                              Icons.clear,
                              color: recoinsDisabled
                                  ? Theme.of(context).colorScheme.outlineVariant
                                  : null,
                            )
                          : null,
                      recoinsDisabled: recoinsDisabled,
                      childElevatedButton: Text(
                        context.knobs.string(
                          label: 'childElevatedButton',
                          initialValue: 'Enabled',
                        ),
                      ),
                      childOutlinedButton: Text(
                        context.knobs.string(
                          label: 'childOutlinedButton',
                          initialValue: 'Enabled',
                        ),
                      ),
                      onPressedElevatedButton: context.knobs.boolean(
                              label: "onPressedElevatedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      onPressedOutlinedButton: context.knobs.boolean(
                              label: "onPressedOutlinedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      isActive: context.knobs.boolean(label: "isActive"),
                      children: context.knobs
                              .boolean(label: "children", initialValue: true)
                          ? const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons
                                        .panorama_vertical_select_outlined),
                                    Text("Support text")
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.timer),
                                    Text("Support text")
                                  ],
                                )
                              ],
                            )
                          : null,
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'product category enable',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalFeedCard(
                      backgroundImages: RecupCardVerticalFeedBackground(
                          backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]
                              .map((e) => RecupCarouselItem(image: e, item: e))
                              .toList()),
                      nameAvatar: context.knobs.string(
                        label: 'nameAvatar',
                        initialValue: 'Ariel Sardinha',
                      ),
                      photoHeader: context.knobs.string(
                        label: 'photoHeader',
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      titleHeader: context.knobs.string(
                        label: 'titleHeader',
                        initialValue: 'Title Header',
                      ),
                      subtitleHeader: context.knobs.string(
                        label: 'subtitleHeader',
                        initialValue: 'Subtitle Header',
                      ),
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? Icon(
                                  Icons.favorite,
                                  color: Theme.of(context).colorScheme.primary,
                                )
                              : null,
                      titleContent: context.knobs.string(
                        label: 'titleContent',
                        initialValue: 'titleContent',
                      ),
                      subtitleContent: context.knobs.string(
                        label: 'subtitleContent',
                        initialValue: 'subtitleContent',
                      ),
                      childElevatedButton: Row(
                        children: [
                          const Icon(
                            Icons.control_camera_outlined,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            context.knobs.string(
                              label: 'childOutlinedButton',
                              initialValue: 'Enabled',
                            ),
                          ),
                        ],
                      ),
                      childOutlinedButton: Text(
                        context.knobs.string(
                          label: 'childElevatedButton',
                          initialValue: 'Enabled',
                        ),
                      ),
                      onPressedElevatedButton: context.knobs.boolean(
                              label: "onPressedElevatedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      onPressedOutlinedButton: context.knobs.boolean(
                              label: "onPressedOutlinedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      children: context.knobs
                              .boolean(label: "children", initialValue: true)
                          ? const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RecupAvatars(
                                  images: [
                                    'https://github.com/arielsardinha.png',
                                    'https://github.com/treinaweb.png',
                                    'https://github.com/recup.png',
                                  ],
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("3 marcas contribuintes")
                              ],
                            )
                          : null,
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'collection point, Enabled',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalFeedCard(
                      noSliderPoints: context.knobs
                          .boolean(label: "noSliderPoints", initialValue: true),
                      backgroundImages: RecupCardVerticalFeedBackground(
                          backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]
                              .map((e) => RecupCarouselItem(image: e, item: e))
                              .toList()),
                      nameAvatar: context.knobs.string(
                        label: 'nameAvatar',
                        initialValue: 'Ariel Sardinha',
                      ),
                      photoHeader: context.knobs.string(
                        label: 'photoHeader',
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      titleHeader: context.knobs.string(
                        label: 'titleHeader',
                        initialValue: 'Title Header',
                      ),
                      subtitleHeader: context.knobs.string(
                        label: 'subtitleHeader',
                        initialValue: 'Subtitle Header',
                      ),
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? const Icon(Icons.favorite_border_outlined)
                              : null,
                      childContent: RecupStatus(
                        text: context.knobs.string(
                          label: 'childContent',
                          initialValue: 'Text',
                        ),
                      ),
                      childElevatedButton: Row(
                        children: [
                          const Icon(
                            Icons.next_plan_outlined,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            context.knobs.string(
                              label: 'childOutlinedButton',
                              initialValue: 'Enabled',
                            ),
                          ),
                        ],
                      ),
                      childOutlinedButton: Text(
                        context.knobs.string(
                          label: 'childElevatedButton',
                          initialValue: 'Enabled',
                        ),
                      ),
                      onPressedElevatedButton: context.knobs.boolean(
                              label: "onPressedElevatedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      onPressedOutlinedButton: context.knobs.boolean(
                              label: "onPressedOutlinedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      children: context.knobs
                              .boolean(label: "children", initialValue: true)
                          ? const Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RecupCircleAvatar(
                                      photo:
                                          'https://github.com/arielsardinha.png',
                                      radius: 16,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Capsulas de café")
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.history_rounded),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Aberto, fecha ás 21h00")
                                  ],
                                ),
                              ],
                            )
                          : null,
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Donation Enabled',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalFeedCard(
                      noSliderPoints: context.knobs
                          .boolean(label: "noSliderPoints", initialValue: true),
                      backgroundImages: RecupCardVerticalFeedBackground(
                          backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]
                              .map((e) => RecupCarouselItem(image: e, item: e))
                              .toList()),
                      nameAvatar: context.knobs.string(
                        label: 'nameAvatar',
                        initialValue: 'Ariel Sardinha',
                      ),
                      photoHeader: context.knobs.string(
                        label: 'photoHeader',
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      titleHeader: context.knobs.string(
                        label: 'titleHeader',
                        initialValue: 'Title Header',
                      ),
                      subtitleHeader: context.knobs.string(
                        label: 'subtitleHeader',
                        initialValue: 'Subtitle Header',
                      ),
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? const Icon(Icons.favorite_border_outlined)
                              : null,
                      subtitleContent: context.knobs.string(
                        label: 'subtitleContent',
                        initialValue: 'subtitleContent',
                      ),
                      childContent: RecupStatus(
                        text: context.knobs.string(
                          label: 'childContent',
                          initialValue: 'Text',
                        ),
                      ),
                      childElevatedButton: Row(
                        children: [
                          const Icon(
                            Icons.circle_outlined,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            context.knobs.string(
                              label: 'childOutlinedButton',
                              initialValue: 'Ativar',
                            ),
                          ),
                        ],
                      ),
                      childOutlinedButton: Text(
                        context.knobs.string(
                          label: 'childElevatedButton',
                          initialValue: 'Ver mais',
                        ),
                      ),
                      onPressedElevatedButton: context.knobs.boolean(
                              label: "onPressedElevatedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      onPressedOutlinedButton: context.knobs.boolean(
                              label: "onPressedOutlinedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      children: context.knobs
                              .boolean(label: "children", initialValue: true)
                          ? Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.person),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("486 doadores ativos")
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.volunteer_activism_outlined),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("1 358€ doados")
                                  ],
                                ),
                              ],
                            )
                          : null,
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Donation Actived',
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalFeedCard(
                      noSliderPoints: context.knobs
                          .boolean(label: "noSliderPoints", initialValue: true),
                      backgroundImages: RecupCardVerticalFeedBackground(
                          backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]
                              .map((e) => RecupCarouselItem(image: e, item: e))
                              .toList()),
                      nameAvatar: context.knobs.string(
                        label: 'nameAvatar',
                        initialValue: 'Ariel Sardinha',
                      ),
                      photoHeader: context.knobs.string(
                        label: 'photoHeader',
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      titleHeader: context.knobs.string(
                        label: 'titleHeader',
                        initialValue: 'Title Header',
                      ),
                      subtitleHeader: context.knobs.string(
                        label: 'subtitleHeader',
                        initialValue: 'Subtitle Header',
                      ),
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? const Icon(Icons.favorite_border_outlined)
                              : null,
                      subtitleContent: context.knobs.string(
                        label: 'subtitleContent',
                        initialValue: 'subtitleContent',
                      ),
                      childContent: RecupStatus(
                        text: context.knobs.string(
                          label: 'childContent',
                          initialValue: 'Text',
                        ),
                      ),
                      isActive: context.knobs.boolean(label: "isActive"),
                      childElevatedButton: Row(
                        children: [
                          const Icon(
                            Icons.check_circle_outlined,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            context.knobs.string(
                              label: 'childOutlinedButton',
                              initialValue: 'Ativo',
                            ),
                          ),
                        ],
                      ),
                      childOutlinedButton: Text(
                        context.knobs.string(
                          label: 'childElevatedButton',
                          initialValue: 'Ver mais',
                        ),
                      ),
                      onPressedElevatedButton: context.knobs.boolean(
                              label: "onPressedElevatedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      onPressedOutlinedButton: context.knobs.boolean(
                              label: "onPressedOutlinedButton",
                              initialValue: true)
                          ? () {}
                          : null,
                      children: context.knobs
                              .boolean(label: "children", initialValue: true)
                          ? Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.person),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("486 doadores ativos")
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.volunteer_activism_outlined),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("1 358€ doados")
                                  ],
                                ),
                              ],
                            )
                          : null,
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
                      iconButtonHeader: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.delete)),
                      title: context.knobs.string(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.string(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: 'Ariel Sardinha',
                      ),
                      textCenter: context.knobs.string(
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
                      textButton: context.knobs.string(
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
                      iconButtonHeader: context.knobs.boolean(
                        label: "iconButtonHeader",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.delete_outline,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      title: context.knobs.string(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.string(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: 'Ariel Sardinha',
                      ),
                      textCenter: context.knobs.string(
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
                      textButton: context.knobs.string(
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
                      iconButtonHeader: context.knobs.boolean(
                        label: "iconButtonHeader",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.favorite,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      title: context.knobs.string(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.string(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: 'Ariel Sardinha',
                      ),
                      textCenter: context.knobs.string(
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
                      textButton: context.knobs.string(
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
                      iconButtonHeader: context.knobs.boolean(
                        label: "iconButtonHeader",
                        initialValue: true,
                      )
                          ? Icon(
                              Icons.favorite,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      title: context.knobs.string(
                        label: "title",
                        initialValue: 'Header',
                      ),
                      subtitle: context.knobs.string(
                        label: "subtitle",
                        initialValue: 'subtitle',
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: 'Ariel Sardinha',
                      ),
                      textCenter: context.knobs.string(
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
                      textButton: context.knobs.string(
                        label: "textButton",
                        initialValue: 'Ativar',
                      ),
                      isActive: context.knobs.boolean(
                        label: 'isActive',
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
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      title: context.knobs.string(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile:
                          context.knobs.boolean(label: "subtitleListTile")
                              ? Row(
                                  children: [
                                    if (context.knobs
                                        .boolean(label: "subtitleListTileIcon"))
                                      const Icon(
                                        Icons.pin_drop_outlined,
                                      ),
                                    SizedBox(
                                      width: 130,
                                      child: Text(
                                        context.knobs.string(
                                          label: "subtitleListTileText",
                                          initialValue: "title",
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : null,
                      photoBackground: context.knobs.string(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.string(
                        label: "textContent",
                        initialValue: "textContent",
                      ),
                      child: context.knobs.boolean(label: "child")
                          ? null
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.light_mode_outlined,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text('Label')
                                  ],
                                ),
                                Icon(
                                  Icons.settings,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
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
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      title: context.knobs.string(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.string(
                          label: "subtitle",
                          initialValue: 'subtitle',
                        ),
                      ),
                      photoBackground: context.knobs.string(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.string(
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
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      title: context.knobs.string(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.string(
                          label: "subtitle",
                          initialValue: "",
                        ),
                      ),
                      photoBackground: context.knobs.string(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.string(
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
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      title: context.knobs.string(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.string(
                          label: "subtitle",
                          initialValue: "subtitle",
                        ),
                      ),
                      photoBackground: context.knobs.string(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.string(
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
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      title: context.knobs.string(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.string(
                          label: "subtitle",
                          initialValue: "subtitle",
                        ),
                      ),
                      photoBackground: context.knobs.string(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.string(
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
                      nameAvatar: context.knobs.string(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.string(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      title: context.knobs.string(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.string(
                          label: "subtitle",
                          initialValue: "subtitle",
                        ),
                      ),
                      photoBackground: context.knobs.string(
                        label: "photoBackground",
                        initialValue: "https://github.com/recup.png",
                      ),
                      onTap:
                          context.knobs.boolean(label: "onTap") ? () {} : null,
                      textContent: context.knobs.string(
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
          ),
          WidgetbookComponent(
            name: "Vertical Bignumber",
            useCases: [
              WidgetbookUseCase(
                name: "Default",
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalBignumber(
                      title: context.knobs.string(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitle: context.knobs.string(
                        label: "subtitle",
                        initialValue: "subtitle",
                      ),
                      onPressed: context.knobs.boolean(label: "onPressed")
                          ? () {}
                          : null,
                      widget: const RecupCircleAvatar(
                        name: "A",
                      ),
                      child: context.knobs.boolean(label: "child")
                          ? const Icon(Icons.reduce_capacity_outlined)
                          : null,
                    ),
                  );
                },
              ),
            ],
          ),
          WidgetbookComponent(
            name: "Horizontal Notification",
            useCases: [
              WidgetbookUseCase(
                name: "Default",
                builder: (context) {
                  return Center(
                    child: RecupCardHorizontalNotification(
                      title: context.knobs.string(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitle: context.knobs.string(
                        label: "subtitle",
                        initialValue: "subtitle",
                      ),
                      photo: context.knobs.string(
                        label: "photo",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      value: double.tryParse(
                            context.knobs.string(label: "value"),
                          ) ??
                          0.0,
                      child: context.knobs.boolean(label: "child")
                          ? const RecupInputChip(
                              text: 'Text',
                            )
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
