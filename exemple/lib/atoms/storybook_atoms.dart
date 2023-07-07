part of 'package:exemple/main.dart';

abstract class _StorybookAtoms {
  static final atomsStorybook = WidgetbookCategory(
    name: 'atoms',
    isInitiallyExpanded: false,
    children: [
      _icons,
      _badges,
      _slider,
      _circleAvatar,
      _inputChip,
    ],
  );

  static final _icons = WidgetbookComponent(
    name: "Icons",
    useCases: [
      WidgetbookUseCase(
        name: 'All',
        builder: (context) {
          final iconList = RecupIcon.getIconsMap().entries.toList();

          final names = context.knobs.boolean(
            label: 'names',
            initialValue: false,
          );

          return Center(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // maxCrossAxisExtent: 200,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 5,
              ),
              padding: const EdgeInsets.all(16),
              itemCount: iconList.length,
              itemBuilder: (BuildContext ctx, index) {
                final icon = iconList[index];
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Icon(
                        icon.value,
                      ),
                      if (names)
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            icon.key,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    ],
  );

  static final _badges = WidgetbookFolder(
    name: "Badges",
    children: [
      WidgetbookComponent(
        name: "Standard",
        useCases: [
          WidgetbookUseCase(
            name: "Notfication",
            builder: (context) {
              return Center(
                child: RecupStandard(
                  text: context.knobs.string(
                    label: "text",
                    initialValue: "",
                  ),
                  color: context.knobs.list(
                      label: "color",
                      options: const [
                        RecupStandardColor.PRIMARY,
                        RecupStandardColor.ERROR
                      ],
                      initialOption: RecupStandardColor.ERROR),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Number",
            builder: (context) {
              return Center(
                child: RecupStandard(
                  text: context.knobs.string(
                    label: "text",
                    initialValue: "1",
                  ),
                  color: context.knobs.list(
                      label: "color",
                      options: const [
                        RecupStandardColor.PRIMARY,
                        RecupStandardColor.ERROR
                      ],
                      initialOption: RecupStandardColor.ERROR),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Text",
            builder: (context) {
              return Center(
                child: RecupStandard(
                  text: context.knobs.string(
                    label: "text",
                    initialValue: "text",
                  ),
                  color: context.knobs.list(
                      label: "color",
                      options: const [
                        RecupStandardColor.PRIMARY,
                        RecupStandardColor.ERROR
                      ],
                      initialOption: RecupStandardColor.ERROR),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Icon",
            builder: (context) {
              return Center(
                child: RecupStandard(
                  text: context.knobs.string(
                    label: "text",
                    initialValue: "+100",
                  ),
                  widget: context.knobs.boolean(
                    label: "widget",
                    initialValue: true,
                  )
                      ? const Icon(
                          RecupIcon.recoin,
                          size: 16,
                        )
                      : null,
                  color: context.knobs.list(
                    label: "color",
                    options: const [
                      RecupStandardColor.PRIMARY,
                      RecupStandardColor.ERROR
                    ],
                  ),
                  maxWidth: double.tryParse(
                    context.knobs.string(
                      label: 'maxWidth',
                      initialValue: '',
                    ),
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Max Width Exemple",
            builder: (context) {
              final maxWidth = double.tryParse(
                context.knobs.string(
                  label: 'maxWidth',
                  initialValue: '80',
                ),
              );
              return Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RecupStandard(
                      text: context.knobs.string(
                        label: "Small Text",
                        initialValue: "small",
                      ),
                      maxWidth: maxWidth,
                    ),
                    RecupStandard(
                      text: context.knobs.string(
                        label: "Medium Text",
                        initialValue: "medium size",
                      ),
                      maxWidth: maxWidth,
                    ),
                    RecupStandard(
                      text: context.knobs.string(
                        label: "Big Text",
                        initialValue: "this is a really big text",
                      ),
                      maxWidth: maxWidth,
                    )
                  ]
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: e,
                          ))
                      .toList(),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Zoomed",
            builder: (context) {
              return Center(
                child: Transform.scale(
                  scale: double.tryParse(
                        context.knobs.string(
                          label: 'scale',
                          initialValue: '5',
                          description: 'storybook only',
                        ),
                      ) ??
                      5,
                  child: RecupStandard(
                    maxWidth: double.tryParse(
                      context.knobs.string(label: "width"),
                    ),
                    text: context.knobs.string(
                      label: "text",
                      initialValue: "text",
                    ),
                    color: context.knobs.list(
                        label: "color",
                        options: const [
                          RecupStandardColor.PRIMARY,
                          RecupStandardColor.ERROR
                        ],
                        initialOption: RecupStandardColor.ERROR),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      WidgetbookComponent(
        name: "Status",
        useCases: [
          WidgetbookUseCase(
            name: "Default",
            builder: (context) {
              return Center(
                child: RecupStatus(
                  width: double.tryParse(context.knobs.string(label: "width")),
                  text:
                      context.knobs.string(label: "text", initialValue: "text"),
                  color: context.knobs.list(
                    label: "color",
                    options: const [
                      RecupStatusColor.UNVAILABLO,
                      RecupStatusColor.AVAILABLE,
                      RecupStatusColor.OPERATING
                    ],
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "All Status",
            builder: (context) {
              final width =
                  double.tryParse(context.knobs.string(label: "width"));
              final text =
                  context.knobs.string(label: "text", initialValue: "text");

              return Center(
                child: Transform.scale(
                  scale: double.tryParse(
                        context.knobs.string(
                          label: 'scale',
                          initialValue: '1',
                          description: 'storybook only',
                        ),
                      ) ??
                      1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: RecupStatusColor.values
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8),
                            child: RecupStatus(
                              width: width,
                              text: text,
                              color: e,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Zoomed",
            builder: (context) {
              return Center(
                child: Transform.scale(
                  scale: double.tryParse(
                        context.knobs.string(
                          label: 'scale',
                          initialValue: '5',
                          description: 'storybook only',
                        ),
                      ) ??
                      5,
                  child: RecupStatus(
                    width:
                        double.tryParse(context.knobs.string(label: "width")),
                    text: context.knobs
                        .string(label: "text", initialValue: "text"),
                    color: context.knobs.list(
                      label: "color",
                      options: const [
                        RecupStatusColor.UNVAILABLO,
                        RecupStatusColor.AVAILABLE,
                        RecupStatusColor.OPERATING
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ],
  );

  static final _slider = WidgetbookComponent(
    name: 'Slider Points',
    useCases: [
      WidgetbookUseCase(
        name: 'Default',
        builder: (context) {
          return Center(
            child: RecupSliderPoints(
              points: const ['', ''],
              currentPoint: context.knobs.list(
                label: 'currentPoint',
                options: const [0, 1],
              ),
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Zoomed",
        builder: (context) {
          return Center(
            child: Transform.scale(
              scale: double.tryParse(
                    context.knobs.string(
                      label: 'scale',
                      initialValue: '5',
                      description: 'storybook only',
                    ),
                  ) ??
                  5,
              child: RecupSliderPoints(
                points: const ['', ''],
                currentPoint: context.knobs.list(
                  label: 'currentPoint',
                  options: const [0, 1],
                ),
              ),
            ),
          );
        },
      ),
    ],
  );

  static final _circleAvatar = WidgetbookComponent(
    name: 'Circle Avatar',
    useCases: [
      WidgetbookUseCase(
        name: 'Base',
        builder: (context) {
          final backgroundColor = context.knobs.listOrNull(
            label: "backgroundColor",
            options: Colors.primaries,
            initialOption: null,
            labelBuilder: (value) =>
                value != null ? (value.value.toRadixString(16)) : 'Null',
          );

          final photo = context.knobs.string(
            label: 'photo',
            initialValue: '',
          );

          return Center(
            child: RecupCircleAvatar(
              loading: context.knobs.boolean(label: "loading"),
              name: context.knobs.string(
                label: 'name',
                initialValue: 'Base',
              ),
              photo: photo,
              radius: double.tryParse(
                context.knobs.string(
                  label: 'radius',
                  initialValue: "100",
                  description: 'default = 20',
                ),
              ),
              backgroundColor: backgroundColor,
              onTap: context.knobs.boolean(
                label: 'onTap',
                initialValue: true,
              )
                  ? () {}
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'Ariel',
        builder: (context) {
          return Center(
            child: RecupCircleAvatar(
              loading: context.knobs.boolean(label: "loading"),
              name: context.knobs.string(
                label: 'Ariel',
                initialValue: 'Ariel Sardinha',
              ),
              photo: context.knobs.string(
                label: 'photo',
                initialValue: 'https://github.com/arielsardinha.png',
              ),
              radius: double.tryParse(
                context.knobs.string(
                  label: 'radius',
                  initialValue: "",
                ),
              ),
              // backgroundColor: context.knobs.list(
              //   label: "backgroundColor",
              //   options: const [
              //     Colors.blue,
              //     Colors.red,
              //     null,
              //   ],
              // ),
              onTap: context.knobs.boolean(
                label: 'onTap',
                initialValue: true,
              )
                  ? () {}
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'Brunno',
        builder: (context) {
          return Center(
            child: RecupCircleAvatar(
              loading: context.knobs.boolean(label: "loading"),
              name: context.knobs.string(
                label: 'Brunno',
                initialValue: 'Brunno',
              ),
              photo: context.knobs.string(
                label: 'photo',
                initialValue: 'https://github.com/boginni.png',
              ),
              radius: double.tryParse(
                context.knobs.string(
                  label: 'radius',
                  initialValue: "",
                ),
              ),
              // backgroundColor: context.knobs.list(
              //   label: "backgroundColor",
              //   options: const [
              //     Colors.blue,
              //     Colors.red,
              //     null,
              //   ],
              // ),
              onTap: context.knobs.boolean(
                label: 'onTap',
                initialValue: true,
              )
                  ? () {}
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'Recup',
        builder: (context) {
          final bg = context.knobs.listOrNull(
            label: "backgroundColor",
            options: Colors.accents,
            initialOption: null,
            labelBuilder: (value) => value?.value.toRadixString(16) ?? '',
          );

          return Center(
            child: RecupCircleAvatar(
              loading: context.knobs.boolean(label: "loading"),
              name: context.knobs.string(
                label: 'name',
                initialValue: 'Recup',
              ),
              photo: context.knobs.string(
                label: 'photo',
                initialValue: 'https://github.com/recup.png',
              ),
              radius: double.tryParse(
                context.knobs.string(
                  label: 'radius',
                  initialValue: "60",
                ),
              ),
              backgroundColor: bg,
              onTap: context.knobs.boolean(
                label: 'onTap',
                initialValue: true,
              )
                  ? () {}
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'Wide Photo',
        builder: (context) {
          final loading = context.knobs.boolean(label: "loading");

          final fit = context.knobs.listOrNull(
            label: "fit",
            description: 'default = Cover',
            options: BoxFit.values,
            initialOption: null,
            labelBuilder: (value) => value?.name ?? '',
          );

          final name = context.knobs.string(
            label: 'name',
            initialValue: 'Wide Image',
          );

          final photos = [
            'https://via.placeholder.com/640x880.png/0055aa?text=width',
            'https://via.placeholder.com/480x840.png/0055aa?text=height',
            'https://via.placeholder.com/480x480.png/0055aa?text=equal',
          ];

          final radius = double.tryParse(
            context.knobs.string(
              label: 'radius',
              initialValue: "120",
            ),
          );

          final backgroundColor = context.knobs.listOrNull(
            label: "backgroundColor",
            options: Colors.accents,
            initialOption: null,
            labelBuilder: (value) => value?.value.toRadixString(16) ?? '',
          );

          final onTap = context.knobs.boolean(
            label: 'onTap',
            initialValue: true,
          )
              ? () {}
              : null;

          return Center(
            child: Wrap(
              direction: Axis.vertical,
              spacing: 12,
              children: photos
                  .map((e) => RecupCircleAvatar(
                        loading: loading,
                        name: name,
                        photo: e,
                        radius: radius,
                        backgroundColor: backgroundColor,
                        onTap: onTap,
                        fit: fit,
                      ))
                  .toList(),
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'Inside GridView',
        builder: (context) {
          final bigList = [
            ...Colors.accents.reversed,
            ...Colors.primaries,
          ];

          return Center(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // maxCrossAxisExtent: 200,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 5,
              ),
              padding: const EdgeInsets.all(16),
              itemCount: bigList.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child: RecupCircleAvatar(
                    name: String.fromCharCode(65 + index),
                    backgroundColor: bigList[index],
                  ),
                );
              },
            ),
          );
        },
      ),
    ],
  );

  static final _inputChip = WidgetbookComponent(
    name: "Input Chip",
    useCases: [
      WidgetbookUseCase(
        name: "Default",
        builder: (context) {
          final disabled = context.knobs.boolean(label: "disabled");

          return Center(
            child: RecupInputChip(
              loading: context.knobs.boolean(label: "loading"),
              text: context.knobs.string(
                label: "text",
                initialValue: "123",
              ),
              onSelected:
                  context.knobs.boolean(label: "onSelected") ? (p0) {} : null,
              widget: context.knobs.boolean(
                label: "widget",
                initialValue: true,
              )
                  ? Icon(
                      Icons.circle,
                      // color: disabled
                      //     ? Theme.of(context).colorScheme.outlineVariant
                      //     : null,
                    )
                  : null,
              selected: context.knobs.boolean(label: "selected"),
              disabled: disabled,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Recoin",
        builder: (context) {
          final disabled = context.knobs.boolean(label: "disabled");
          return Center(
            child: RecupInputChip(
              loading: context.knobs.boolean(label: "loading"),
              text: context.knobs.string(
                label: "text",
                initialValue: "123",
              ),
              onSelected:
                  context.knobs.boolean(label: "onSelected") ? (p0) {} : null,
              widget: context.knobs.boolean(
                label: "widget",
                initialValue: true,
              )
                  ? Icon(
                      RecupIcon.recoin_fill,
                      color: disabled
                          ? Theme.of(context).colorScheme.outlineVariant
                          : null,
                    )
                  : null,
              selected: context.knobs.boolean(label: "selected"),
              disabled: disabled,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Zoomed",
        builder: (context) {
          final disabled = context.knobs.boolean(label: "disabled");
          return Center(
            child: Transform.scale(
              scale: double.tryParse(
                    context.knobs.string(
                      label: 'scale',
                      initialValue: '5',
                      description: 'storybook only',
                    ),
                  ) ??
                  5,
              child: RecupInputChip(
                loading: context.knobs.boolean(label: "loading"),
                text: context.knobs.string(
                  label: "text",
                  initialValue: "123",
                ),
                widget: context.knobs.boolean(
                  label: "widget",
                  initialValue: true,
                )
                    ? Icon(
                        Icons.circle,
                        color: disabled
                            ? Theme.of(context).colorScheme.outlineVariant
                            : null,
                      )
                    : null,
                onSelected:
                    context.knobs.boolean(label: "onSelected") ? (p0) {} : null,
                selected: context.knobs.boolean(label: "selected"),
                disabled: disabled,
              ),
            ),
          );
        },
      ),
    ],
  );
}
