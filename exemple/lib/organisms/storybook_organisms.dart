part of 'package:exemple/main.dart';

abstract class _StorybookOrganismis {
  static final widgets = WidgetbookCategory(
    name: 'organisms',
    isInitiallyExpanded: false,
    children: [
      WidgetbookBuilders.widget,
      CarouselUseCases.carrousel,
      WidgetbookFolder(
        name: 'Cards',
        isInitiallyExpanded: false,
        children: [
          _horizontalAction,
          _verticalFeed,
          _verticalAction,
          WidgetbookVerticalSugestion.verticalSugestion,
          WidgetbookVerticalBigNumer.verticalBigNumber,
          _horizontalNotification,
        ],
      ),
      WidgetbookComponent(
        name: 'Dialog',
        isInitiallyExpanded: false,
        useCases: _picker,
      ),
      WidgetbookFolder(
        name: 'Others',
        isInitiallyExpanded: false,
        children: [
          WidgetbookComponent(
            name: 'Recup Debug',
            useCases: [
              WidgetbookUseCase(
                name: 'Base Exemple',
                builder: (context) {
                  return Center(
                    child: RecupDebug(
                      text: RecupDebugText(context.knobs.string(
                        label: 'text',
                        initialValue: 'Mensagem Personalidade',
                      )),
                      child:
                          const Text('Funcionalidade que precisa ser Ajsutada'),
                    ),
                  );
                },
              ),
              WidgetbookUseCase(
                name: 'Card Exemple',
                builder: (context) {
                  if (context.knobs.boolean(label: 'test')) {
                    return Center(
                      child: RecupDebug(
                        text: RecupDebugText(context.knobs.string(
                          label: 'text',
                          initialValue: 'Mensagem Personalidade',
                        )),
                        child: const RecupCardHorizontalNotification(),
                      ),
                    );
                  }

                  return const Center(
                    child: RecupCardHorizontalNotification(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );

  static final _horizontalAction = WidgetbookComponent(
    name: 'Horizontal Action',
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: 'Offer Active',
        builder: (context) {
          return Center(
            child: RecupCardHorizontalActionAds(
              childButton: Text(
                context.knobs.string(
                  label: 'childButton (Text)',
                  initialValue: 'Cupom Ativo',
                ),
              ),
              title: context.knobs.string(
                label: 'title',
                initialValue: 'Header',
              ),
              subtitle: context.knobs.string(
                label: 'subtitle',
                initialValue: 'subtitle',
              ),
              badgeText: context.knobs.string(
                label: 'badgeText',
                initialValue: 'text',
              ),
              badgeColor: context.knobs.list(
                label: 'badgeColor',
                options: [
                  RecupBadgeStandardColor.ERROR,
                  RecupBadgeStandardColor.PRIMARY,
                ],
                labelBuilder: (value) => value.name,
              ),
              onPressedButton: context.knobs.boolean(label: 'onPressedButton')
                  ? null
                  : () {},
              leading: context.knobs.boolean(
                label: 'leading',
                initialValue: false,
              )
                  ? const Icon(
                      Icons.check_circle_outline_outlined,
                      size: 40,
                    )
                  : null,
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
      WidgetbookUseCase(
        name: 'Assotiation Active',
        builder: (context) {
          return Center(
            child: RecupCardHorizontalActionAds(
              childButton: Text(
                context.knobs.string(
                  label: 'childButton (Text)',
                  initialValue: 'Don ativo',
                ),
              ),
              title: context.knobs.string(
                label: 'title',
                initialValue: '3,5 €',
              ),
              subtitle: context.knobs.string(
                label: 'subtitle',
                initialValue: 'Ligue Conter le cancer',
              ),
              badgeText: context.knobs.string(
                label: 'badgeText',
                initialValue: 'Text',
              ),
              badgeColor: context.knobs.list(
                  label: 'badgeColor',
                  options: [
                    RecupBadgeStandardColor.ERROR,
                    RecupBadgeStandardColor.PRIMARY,
                  ],
                  labelBuilder: (value) => value.name,
                  initialOption: RecupBadgeStandardColor.PRIMARY),
              onPressedButton: context.knobs.boolean(label: 'onPressedButton')
                  ? null
                  : () {},
              leading:
                  context.knobs.boolean(label: 'leading', initialValue: false)
                      ? const Icon(
                          Icons.check_circle_outline_outlined,
                          size: 40,
                        )
                      : null,
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
      WidgetbookUseCase(
        name: 'Ads Image',
        builder: (context) {
          return Center(
            child: RecupCardHorizontalActionImage(
              photoBackground: context.knobs.string(
                label: 'photoBackground',
                initialValue: 'https://github.com/recup.png',
              ),
              onPressed: context.knobs.boolean(
                label: 'onPressed',
                initialValue: true,
              )
                  ? () {}
                  : null,
            ),
          );
        },
      ),
    ],
  );

  static final _verticalFeed = WidgetbookComponent(
    name: 'Vertical feed',
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: 'Default',
        builder: (context) {
          final recoinsDisabled =
              context.knobs.boolean(label: "recoinsDisabled");

          return Center(
            child: RecupCardVerticalFeed(
              width: double.tryParse(context.knobs.string(label: "width")),
              noSliderPoints: context.knobs.boolean(label: "noSliderPoints"),
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
                ].map((e) => RecupCarouselItem(image: e, item: e)).toList(),
              ),
              nameAvatar: context.knobs.string(
                label: 'nameAvatar',
                initialValue: 'Ariel Sardinha',
              ),
              photoHeader: context.knobs.string(
                label: 'photoHeader',
                initialValue: 'https://github.com/boginni.png',
              ),
              titleHeader: context.knobs.string(
                label: 'titleHeader',
                initialValue: 'Title Header',
              ),
              subtitleHeader: context.knobs.string(
                label: 'subtitleHeader',
                initialValue: 'Subtitle Header',
              ),
              trailingHeader: context.knobs.boolean(label: "trailingHeader")
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
              childContent: RecupBadgeStandard(
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
                      label: "onPressedElevatedButton", initialValue: true)
                  ? () {}
                  : null,
              onPressedOutlinedButton: context.knobs.boolean(
                      label: "onPressedOutlinedButton", initialValue: true)
                  ? () {}
                  : null,
              isActive: context.knobs.boolean(label: "isActive"),
              children: context.knobs
                      .boolean(label: "children", initialValue: true)
                  ? const Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.panorama_vertical_select_outlined),
                            Text("Support text")
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [Icon(Icons.timer), Text("Support text")],
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
            child: RecupCardVerticalFeed(
              backgroundImages: RecupCardVerticalFeedBackground(
                  backgroundImages: [
                'https://github.com/arielsardinha.png',
                'https://github.com/treinaweb.png',
                'https://github.com/recup.png',
              ].map((e) => RecupCarouselItem(image: e, item: e)).toList()),
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
              trailingHeader: context.knobs.boolean(label: "trailingHeader")
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
                      label: "onPressedElevatedButton", initialValue: true)
                  ? () {}
                  : null,
              onPressedOutlinedButton: context.knobs.boolean(
                      label: "onPressedOutlinedButton", initialValue: true)
                  ? () {}
                  : null,
              children:
                  context.knobs.boolean(label: "children", initialValue: true)
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
            child: RecupCardVerticalFeed(
              noSliderPoints: context.knobs
                  .boolean(label: "noSliderPoints", initialValue: true),
              backgroundImages: RecupCardVerticalFeedBackground(
                  backgroundImages: [
                'https://github.com/arielsardinha.png',
                'https://github.com/treinaweb.png',
                'https://github.com/recup.png',
                'file:///',
              ].map((e) => RecupCarouselItem(image: e, item: e)).toList()),
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
              trailingHeader: context.knobs.boolean(label: "trailingHeader")
                  ? const Icon(Icons.favorite_border_outlined)
                  : null,
              childContent: RecupBadgeStatus(
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
                      label: "onPressedElevatedButton", initialValue: true)
                  ? () {}
                  : null,
              onPressedOutlinedButton: context.knobs.boolean(
                      label: "onPressedOutlinedButton", initialValue: true)
                  ? () {}
                  : null,
              children:
                  context.knobs.boolean(label: "children", initialValue: true)
                      ? const Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RecupCircleAvatar(
                                  photo: 'https://github.com/arielsardinha.png',
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
            child: RecupCardVerticalFeed(
              noSliderPoints: context.knobs
                  .boolean(label: "noSliderPoints", initialValue: true),
              backgroundImages: RecupCardVerticalFeedBackground(
                  backgroundImages: [
                'https://github.com/arielsardinha.png',
                'https://github.com/treinaweb.png',
                'https://github.com/recup.png',
              ].map((e) => RecupCarouselItem(image: e, item: e)).toList()),
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
              trailingHeader: context.knobs.boolean(label: "trailingHeader")
                  ? const Icon(Icons.favorite_border_outlined)
                  : null,
              subtitleContent: context.knobs.string(
                label: 'subtitleContent',
                initialValue: 'subtitleContent',
              ),
              childContent: RecupBadgeStatus(
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
                      label: "onPressedElevatedButton", initialValue: true)
                  ? () {}
                  : null,
              onPressedOutlinedButton: context.knobs.boolean(
                      label: "onPressedOutlinedButton", initialValue: true)
                  ? () {}
                  : null,
              children:
                  context.knobs.boolean(label: "children", initialValue: true)
                      ? const Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.person),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("486 doadores ativos")
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
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
            child: RecupCardVerticalFeed(
              noSliderPoints: context.knobs
                  .boolean(label: "noSliderPoints", initialValue: true),
              backgroundImages: RecupCardVerticalFeedBackground(
                  backgroundImages: [
                'https://github.com/arielsardinha.png',
                'https://github.com/treinaweb.png',
                'https://github.com/recup.png',
              ].map((e) => RecupCarouselItem(image: e, item: e)).toList()),
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
              trailingHeader: context.knobs.boolean(label: "trailingHeader")
                  ? const Icon(Icons.favorite_border_outlined)
                  : null,
              subtitleContent: context.knobs.string(
                label: 'subtitleContent',
                initialValue: 'subtitleContent',
              ),
              childContent: RecupBadgeStatus(
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
                      label: "onPressedElevatedButton", initialValue: true)
                  ? () {}
                  : null,
              onPressedOutlinedButton: context.knobs.boolean(
                      label: "onPressedOutlinedButton", initialValue: true)
                  ? () {}
                  : null,
              children:
                  context.knobs.boolean(label: "children", initialValue: true)
                      ? const Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.person),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("486 doadores ativos")
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
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
  );

  static final _verticalAction = WidgetbookComponent(
    name: 'Vertical action',
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: 'Default',
        builder: (context) {
          return Center(
            child: RecupCardVerticalAction(
              iconButtonHeader: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
              ),
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
  );

  static final _horizontalNotification = WidgetbookComponent(
    name: "Horizontal Notification",
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: "Base",
        builder: (context) {
          return Center(
            child: RecupCardHorizontalNotification(
              title: context.knobs.string(
                label: "title",
                initialValue: "Header",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "Subhead",
              ),
              photo: context.knobs.string(
                label: "photo",
                initialValue:
                    "https://htmlcolorcodes.com/assets/images/colors/blue-gray-color-solid-background-1920x1080.png",
              ),
              value: double.tryParse(
                    context.knobs.string(
                      label: "value",
                      initialValue: '0.25',
                    ),
                  ) ??
                  0.0,
              onPressed:
                  context.knobs.boolean(label: 'onPressed', initialValue: true)
                      ? () {}
                      : null,
              leading: context.knobs.boolean(
                label: "leading",
                initialValue: false,
              )
                  ? const RecupCircleAvatar(
                      name: 'R',
                    )
                  : null,
              child: context.knobs.boolean(
                label: "child",
                initialValue: true,
              )
                  ? const RecupBadgeStandard(
                      text: 'Text',
                    )
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Level",
        builder: (context) {
          return Center(
            child: RecupCardHorizontalNotification(
              title: context.knobs.string(
                label: "title",
                initialValue: "Level",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "25%",
              ),
              photo: context.knobs.string(
                label: "photo",
                initialValue: "https://github.com/boginni.png",
              ),
              value: double.tryParse(
                    context.knobs.string(label: "value"),
                  ) ??
                  0.25,
              onPressed:
                  context.knobs.boolean(label: 'onPressed', initialValue: true)
                      ? () {}
                      : null,
              leading: context.knobs.boolean(
                label: "leading",
                initialValue: false,
              )
                  ? const RecupCircleAvatar(
                      name: 'R',
                    )
                  : null,
              child: context.knobs.boolean(
                label: "child",
                initialValue: false,
              )
                  ? const RecupBadgeStandard(
                      text: 'Text',
                    )
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Big Number",
        builder: (context) {
          return Center(
            child: RecupCardHorizontalNotification(
              title: context.knobs.string(
                label: "title",
                initialValue: "Header",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "Subhead",
              ),
              photo: context.knobs.string(
                label: "photo",
                initialValue: "",
              ),
              value: double.tryParse(
                    context.knobs.string(label: "value"),
                  ) ??
                  0.0,
              leading: context.knobs.boolean(
                label: "leading",
                initialValue: true,
              )
                  ? const RecupCircleAvatar(
                      name: 'R',
                    )
                  : null,
              onPressed: context.knobs.boolean(
                label: 'onPressed',
                initialValue: false,
              )
                  ? () {}
                  : null,
              child: context.knobs.boolean(
                label: "child",
                initialValue: true,
              )
                  ? RecupInputChip(
                      onSelected: (p0) {},
                      text: '+25%',
                      widget: const Icon(
                        Icons.trending_up,
                      ),
                    )
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Other",
        builder: (context) {
          return Center(
            child: RecupCardHorizontalNotification(
              title: context.knobs.string(
                label: "title",
                initialValue: "Header",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "Subhead",
              ),
              photo: context.knobs.string(
                label: "photo",
                initialValue: "",
              ),
              value: double.tryParse(
                    context.knobs.string(label: "value"),
                  ) ??
                  0.0,
              leading: context.knobs.boolean(
                label: "leading",
                initialValue: true,
              )
                  ? const RecupCircleAvatar(
                      name: 'R',
                    )
                  : null,
              onPressed:
                  context.knobs.boolean(label: 'onPressed', initialValue: true)
                      ? () {}
                      : null,
              child: context.knobs.boolean(
                label: "child",
                initialValue: true,
              )
                  ? const RecupBadgeStandard(
                      text: 'Text',
                    )
                  : null,
            ),
          );
        },
      ),
    ],
  );

  static final _picker = [
    WidgetbookUseCase(
      name: 'Month Picker Dialog',
      builder: (context) {
        RecupMonthPickerDialog.debugMode = context.knobs.boolean(
          label: 'Debug Mode',
          initialValue: true,
        );
        RecupMonthPickerDialog.debugScreenWidth = double.tryParse(
              context.knobs
                  .string(label: 'Debug Screen Width', initialValue: '100'),
            ) ??
            100;

        DateTime? initialData = context.knobs.boolean(
                label: 'dateTime',
                initialValue: true,
                description: 'DateTime.now()')
            ? DateTime.now()
            : null;

        return Center(
          child: RecupElevatedButton(
            child: const Text('Show Dialog'),
            onPressed: () {
              RecupMonthPickerDialog.showMonthPicker(
                context: context,
                onMonthSelected: (DateTime? value) {},
                dateTime: initialData,
              );
            },
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Month Picker',
      builder: (context) {
        RecupMonthPickerDialog.debugMode = false;

        DateTime? initialData = context.knobs.boolean(
          label: 'dateTime',
          initialValue: true,
          description: 'DateTime.now()',
        )
            ? DateTime.now()
            : null;

        return Center(
          child: WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: RecupMonthPickerDialog(
              onMonthSelected: (DateTime? value) {},
              dateTime: initialData,
            ),
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Year Picker Dialog',
      builder: (context) {
        RecupYearPickerDialog.debugMode = context.knobs.boolean(
          label: 'Debug Mode',
          initialValue: true,
        );

        RecupYearPickerDialog.debugScreenWidth = double.tryParse(
              context.knobs
                  .string(label: 'Debug Screen Width', initialValue: '100'),
            ) ??
            100;

        return Center(
          child: RecupElevatedButton(
            child: const Text('Show Dialog'),
            onPressed: () {
              RecupYearPickerDialog.showYearPicker(
                context: context,
                onYearSelected: (DateTime? value) {},
                dateTime: DateTime.now(),
              );
            },
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Year Picker',
      builder: (context) {
        RecupYearPickerDialog.debugMode = false;

        return Center(
          child: WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: RecupYearPickerDialog(
              onYearSelected: (DateTime? value) {},
              dateTime: DateTime.now(),
            ),
          ),
        );
      },
    ),
  ];

// static final _selectController = TextEditingController();

// static final _select = [
//   // WidgetbookUseCase(
//   //   name: 'Recup Select',
//   //   builder: (context) {
//   //     int i = 0;
//   //
//   //     final itens = ValueNotifier(
//   //       List.filled(20, 'Item')
//   //           .map(
//   //             (e) => RecupSelectItem(
//   //               text: '$e ${i++}',
//   //               value: i,
//   //             ),
//   //           )
//   //           .toList(),
//   //     );
//   //
//   //     final widget = RecupSelect(
//   //       items: itens,
//   //     );
//   //
//   //     return widget;
//   //   },
//   // ),
//   // WidgetbookUseCase(
//   //   name: 'Base',
//   //   builder: (context) {
//   //     return RecupListItem();
//   //   },
//   // ),
// ];
}
