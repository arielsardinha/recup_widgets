import 'package:exemple/support/use_case_testing.dart';
import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:widgetbook/widgetbook.dart';

sealed class AtomChips {
  static final _input = WidgetbookComponent(
    name: 'Input',
    isInitiallyExpanded: false,
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
                  ? const Icon(
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
  static final _filter = WidgetbookComponent(
    name: 'Filter',
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: "Base",
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
              child: RecupFilterChip(
                onTap: context.knobs.boolean(label: "onTap", initialValue: true)
                    ? () {}
                    : null,
                loading: context.knobs.boolean(label: "loading"),
                enabled:
                    context.knobs.boolean(label: "enabled", initialValue: true),
                leading: context.knobs.boolean(label: "leading")
                    ? RecupIcon.car
                    : null,
                trailing:
                    context.knobs.boolean(label: "trailing", initialValue: true)
                        ? RecupIcon.chevron_down
                        : null,
                text: context.knobs.string(
                  label: "text",
                  initialValue: "year",
                ),
                selected: context.knobs.boolean(label: "selected"),
              ),
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Test Padding",
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
              child: RecupFilterChip(
                onTap: context.knobs.boolean(label: "onTap", initialValue: true)
                    ? () {}
                    : null,
                loading: context.knobs.boolean(label: "loading"),
                enabled:
                    context.knobs.boolean(label: "enabled", initialValue: true),
                leading: context.knobs.boolean(label: "leading")
                    ? Icons.circle
                    : null,
                trailing: context.knobs.boolean(
                  label: "trailing",
                  initialValue: true,
                )
                    ? Icons.circle
                    : null,
                text: context.knobs.string(
                  label: "text",
                  initialValue: "",
                ),
                selected: context.knobs.boolean(label: "selected"),
              ),
            ),
          );
        },
      ),
    ],
  );
  static final _tag = WidgetbookComponent(
    name: 'Tags',
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: 'Base',
        builder: (context) {
          return UseCaseTest(
            builder: (context, onTap) {
              return RecupTag(
                text: context.knobs.string(
                  label: 'text',
                  initialValue: 'Text',
                ),
                color: context.knobs.list(
                  label: 'color',
                  options: RecupTagColor.values,
                  labelBuilder: (value) => value.name,
                ),
                maxWidth: double.tryParse(
                  context.knobs.string(
                    label: 'maxWidth',
                    initialValue: '',
                  ),
                ),
              );
            },
          );
        },
      ),
      WidgetbookUseCase(
        name: 'All Colors',
        builder: (context) {
          return UseCaseTest(
            builder: (context, onTap) {
              final text = context.knobs.string(
                label: 'text',
                initialValue: 'Text',
              );

              final maxWidth = double.tryParse(
                context.knobs.string(
                  label: 'maxWidth',
                  initialValue: '80',
                ),
              );

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: RecupTagColor.values
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: RecupTag(
                            text: text,
                            color: e,
                            maxWidth: maxWidth,
                          ),
                        ))
                    .toList(),
              );
            },
          );
        },
      ),
      // WidgetbookUseCase(
      //   name: 'Exemple App',
      //   builder: (context) {
      //     final rng = Random();
      //
      //     final material = [
      //       'Alumínio',
      //       'Borra de Café',
      //       'Plastico',
      //       'Papel',
      //       'Madeira',
      //       'Orgânico',
      //       'Vidro'
      //     ];
      //
      //     final medida = ['Kg', 'Ml', 'L', 'g', 'T', 'Oz', 'Ft'];
      //
      //     dynamic random(List list) {
      //       return list[rng.nextInt(list.length)];
      //     }
      //
      //     return RecupHorizontalScrollView.builder(
      //       items: List.filled(50, null),
      //       padding: const EdgeInsets.symmetric(horizontal: 16),
      //       itemPadding: const EdgeInsets.symmetric(horizontal: 5),
      //       builder: (index, item) {
      //         return RecupTag(
      //           text:
      //           '${random(material)} - ${(rng.nextDouble() * 10).toStringAsFixed(1)}${random(medida)}',
      //           color: random(RecupTagColor.values),
      //         );
      //       },
      //     );
      //   },
      // ),
    ],
  );

  static final chips = WidgetbookFolder(
    name: 'Chips',
    isInitiallyExpanded: true,
    children: [_input, _filter, _tag],
  );
}
