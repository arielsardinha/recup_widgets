import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:widgetbook/widgetbook.dart';

sealed class AtomsBadges {
  static final badges = WidgetbookFolder(
    name: "Badges",
    isInitiallyExpanded: false,
    children: [
      WidgetbookComponent(
        name: "Standard",
        useCases: [
          WidgetbookUseCase(
            name: "Notfication",
            builder: (context) {
              return Center(
                child: RecupBadgeStandard(
                  text: context.knobs.string(
                    label: "text",
                    initialValue: "",
                  ),
                  color: context.knobs.list(
                      label: "color",
                      options: const [
                        RecupBadgeStandardColor.PRIMARY,
                        RecupBadgeStandardColor.ERROR
                      ],
                      initialOption: RecupBadgeStandardColor.ERROR),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Number",
            builder: (context) {
              return Center(
                child: RecupBadgeStandard(
                  text: context.knobs.string(
                    label: "text",
                    initialValue: "1",
                  ),
                  color: context.knobs.list(
                      label: "color",
                      options: const [
                        RecupBadgeStandardColor.PRIMARY,
                        RecupBadgeStandardColor.ERROR
                      ],
                      initialOption: RecupBadgeStandardColor.ERROR),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Text",
            builder: (context) {
              return Center(
                child: RecupBadgeStandard(
                  text: context.knobs.string(
                    label: "text",
                    initialValue: "text",
                  ),
                  color: context.knobs.list(
                      label: "color",
                      options: const [
                        RecupBadgeStandardColor.PRIMARY,
                        RecupBadgeStandardColor.ERROR
                      ],
                      initialOption: RecupBadgeStandardColor.ERROR),
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
                    RecupBadgeStandard(
                      text: context.knobs.string(
                        label: "Small Text",
                        initialValue: "small",
                      ),
                      maxWidth: maxWidth,
                    ),
                    RecupBadgeStandard(
                      text: context.knobs.string(
                        label: "Medium Text",
                        initialValue: "medium size",
                      ),
                      maxWidth: maxWidth,
                    ),
                    RecupBadgeStandard(
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
                child: RecupBadgeStandard(
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
                        RecupBadgeStandardColor.PRIMARY,
                        RecupBadgeStandardColor.ERROR
                      ],
                      initialOption: RecupBadgeStandardColor.ERROR),
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
                child: RecupBadgeStatus(
                  width: double.tryParse(context.knobs.string(label: "width")),
                  text:
                      context.knobs.string(label: "text", initialValue: "text"),
                  color: context.knobs.list(
                    label: "color",
                    options: const [
                      RecupBadgeStatusColor.UNVAILABLO,
                      RecupBadgeStatusColor.AVAILABLE,
                      RecupBadgeStatusColor.OPERATING
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: RecupBadgeStatusColor.values
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: RecupBadgeStatus(
                            width: width,
                            text: text,
                            color: e,
                          ),
                        ),
                      )
                      .toList(),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Zoomed",
            builder: (context) {
              return Center(
                child: RecupBadgeStatus(
                  width:
                      double.tryParse(context.knobs.string(label: "width")),
                  text: context.knobs
                      .string(label: "text", initialValue: "text"),
                  color: context.knobs.list(
                    label: "color",
                    options: const [
                      RecupBadgeStatusColor.UNVAILABLO,
                      RecupBadgeStatusColor.AVAILABLE,
                      RecupBadgeStatusColor.OPERATING
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ],
  );
}
