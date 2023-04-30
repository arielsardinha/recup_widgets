part of 'package:exemple/main.dart';

abstract class _StorybookOrganismis {
  static final organismisbookMolecules = WidgetbookCategory(
    name: 'organisms',
    folders: [
      WidgetbookFolder(
        name: 'Cards',
        widgets: [
          WidgetbookComponent(
            name: 'Horizontal Card Ads',
            useCases: [
              WidgetbookUseCase(
                name: 'Default',
                builder: (context) {
                  return Center(
                    child: RecupCardHorizontalCardAds(
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
                      photoBackground: context.knobs.text(
                        label: 'photoBackground',
                        initialValue: 'https://github.com/recup.png',
                      ),
                      avatarPhoto: context.knobs.text(
                        label: 'avatarPhoto',
                        initialValue: 'https://github.com/arielsardinha.png',
                      ),
                      avatarName: context.knobs.text(
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
                          double.tryParse(context.knobs.text(label: "width")),
                      noSliderPoints:
                          context.knobs.boolean(label: "noSliderPoints"),
                      carouselSize: context.knobs.options(
                        label: "carouselSize",
                        options: const [
                          Option(
                            label: "NORMAL",
                            value: RecupCarouselSize.NORMAL,
                          ),
                          Option(
                            label: "LARGE",
                            value: RecupCarouselSize.LARGE,
                          )
                        ],
                      ),
                      backgroundImages:
                          RecupCardVerticalFeedBackground(backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]),
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
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? const Icon(Icons.more_vert)
                              : null,
                      titleContent: context.knobs.text(
                        label: 'titleContent',
                        initialValue: 'titleContent',
                      ),
                      subtitleContent: context.knobs.text(
                        label: 'subtitleContent',
                        initialValue: 'subtitleContent',
                      ),
                      childContent: RecupStandard(
                        text: context.knobs.text(
                          label: 'childContent',
                          initialValue: 'Text',
                        ),
                      ),
                      recoins: context.knobs.text(
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
                        context.knobs.text(
                          label: 'childElevatedButton',
                          initialValue: 'Enabled',
                        ),
                      ),
                      childOutlinedButton: Text(
                        context.knobs.text(
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
                          ? Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons
                                        .panorama_vertical_select_outlined),
                                    Text("Support text")
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
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
                      backgroundImages:
                          RecupCardVerticalFeedBackground(backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]),
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
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? Icon(
                                  Icons.favorite,
                                  color: Theme.of(context).colorScheme.primary,
                                )
                              : null,
                      titleContent: context.knobs.text(
                        label: 'titleContent',
                        initialValue: 'titleContent',
                      ),
                      subtitleContent: context.knobs.text(
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
                            context.knobs.text(
                              label: 'childOutlinedButton',
                              initialValue: 'Enabled',
                            ),
                          ),
                        ],
                      ),
                      childOutlinedButton: Text(
                        context.knobs.text(
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
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
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
                      backgroundImages:
                          RecupCardVerticalFeedBackground(backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]),
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
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? const Icon(Icons.favorite_border_outlined)
                              : null,
                      childContent: RecupStatus(
                        text: context.knobs.text(
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
                            context.knobs.text(
                              label: 'childOutlinedButton',
                              initialValue: 'Enabled',
                            ),
                          ),
                        ],
                      ),
                      childOutlinedButton: Text(
                        context.knobs.text(
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
                          ? Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
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
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
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
                      backgroundImages:
                          RecupCardVerticalFeedBackground(backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]),
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
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? const Icon(Icons.favorite_border_outlined)
                              : null,
                      subtitleContent: context.knobs.text(
                        label: 'subtitleContent',
                        initialValue: 'subtitleContent',
                      ),
                      childContent: RecupStatus(
                        text: context.knobs.text(
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
                            context.knobs.text(
                              label: 'childOutlinedButton',
                              initialValue: 'Ativar',
                            ),
                          ),
                        ],
                      ),
                      childOutlinedButton: Text(
                        context.knobs.text(
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
                      backgroundImages:
                          RecupCardVerticalFeedBackground(backgroundImages: [
                        'https://github.com/arielsardinha.png',
                        'https://github.com/treinaweb.png',
                        'https://github.com/recup.png',
                      ]),
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
                      trailingHeader:
                          context.knobs.boolean(label: "trailingHeader")
                              ? const Icon(Icons.favorite_border_outlined)
                              : null,
                      subtitleContent: context.knobs.text(
                        label: 'subtitleContent',
                        initialValue: 'subtitleContent',
                      ),
                      childContent: RecupStatus(
                        text: context.knobs.text(
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
                            context.knobs.text(
                              label: 'childOutlinedButton',
                              initialValue: 'Ativo',
                            ),
                          ),
                        ],
                      ),
                      childOutlinedButton: Text(
                        context.knobs.text(
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
                      iconButtonHeader: context.knobs.boolean(
                        label: "iconButtonHeader",
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
                      iconButtonHeader: context.knobs.boolean(
                        label: "iconButtonHeader",
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
                      iconButtonHeader: context.knobs.boolean(
                        label: "iconButtonHeader",
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
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      title: context.knobs.text(
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
                                        context.knobs.text(
                                          label: "subtitleListTileText",
                                          initialValue: "title",
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : null,
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
                      nameAvatar: context.knobs.text(
                        label: "nameAvatar",
                        initialValue: "Ariel",
                      ),
                      photoAvatar: context.knobs.text(
                        label: "photoAvatar",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      title: context.knobs.text(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.text(
                          label: "subtitle",
                          initialValue: 'subtitle',
                        ),
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
                      title: context.knobs.text(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.text(
                          label: "subtitle",
                          initialValue: "",
                        ),
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
                      title: context.knobs.text(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.text(
                          label: "subtitle",
                          initialValue: "subtitle",
                        ),
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
                      title: context.knobs.text(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.text(
                          label: "subtitle",
                          initialValue: "subtitle",
                        ),
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
                      title: context.knobs.text(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitleListTile: Text(
                        context.knobs.text(
                          label: "subtitle",
                          initialValue: "subtitle",
                        ),
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
          ),
          WidgetbookComponent(
            name: "Vertical Bignumber",
            useCases: [
              WidgetbookUseCase(
                name: "Default",
                builder: (context) {
                  return Center(
                    child: RecupCardVerticalBignumber(
                      title: context.knobs.text(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitle: context.knobs.text(
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
                      title: context.knobs.text(
                        label: "title",
                        initialValue: "title",
                      ),
                      subtitle: context.knobs.text(
                        label: "subtitle",
                        initialValue: "subtitle",
                      ),
                      photo: context.knobs.text(
                        label: "photo",
                        initialValue: "https://github.com/arielsardinha.png",
                      ),
                      value: double.tryParse(
                            context.knobs.text(label: "value"),
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
