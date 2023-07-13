import 'package:exemple/support/use_case_testing.dart';
import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:widgetbook/widgetbook.dart';

sealed class AtomsBase {
  static final icons = WidgetbookComponent(
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

  static final iconList = [];

  static final _texts = [
    WidgetbookUseCase(
      name: 'Details',
      builder: (context) {
        final theme = Theme.of(context).textTheme;

        final ref = {
          'displayLarge': theme.displayLarge,
          'displayMedium': theme.displayMedium,
          'displaySmall': theme.displaySmall,
          'headlineLarge': theme.headlineLarge,
          'headlineMedium': theme.headlineMedium,
          'headlineSmall': theme.headlineSmall,
          'titleLarge': theme.titleLarge,
          'titleMedium': theme.titleMedium,
          'titleSmall': theme.titleSmall,
          'labelLarge': theme.labelLarge,
          'labelMedium': theme.labelMedium,
          'labelSmall': theme.labelSmall,
          'bodyLarge': theme.bodyLarge,
          'bodyMedium': theme.bodyMedium,
          'bodySmall': theme.bodySmall
        };

        final styleEntry = context.knobs.list(
          label: 'style',
          options: ref.entries.toList(),
          labelBuilder: (value) => value.key,
        );

        return UseCaseTest(
          builder: (BuildContext context, dynamic Function(int) onTap) {
            final style = styleEntry.value;

            return Column(
              children: [
                Container(
                  color: context.knobs
                          .boolean(label: 'wrapContainer', initialValue: false)
                      ? Colors.red
                      : null,
                  child: Text(
                    context.knobs.string(
                      label: 'text',
                      initialValue: 'Exemple Text',
                    ),
                    style: style,
                  ),
                ),
                if (style != null)
                  Column(
                    children: [
                      const Divider(),
                      Text('fontSize: ${style.fontSize}'),
                      // ${((style.height ?? 1) * (style.fontSize ?? 1)).toInt()} / ${style.fontSize?.toInt()}
                      Text(
                          'height: ${style.height?.toStringAsFixed(2)} (${(style.height! * style.fontSize!).toInt()})'),
                      Text('fontWeight: ${style.fontWeight}'),
                      Text('letterSpacing: ${style.letterSpacing}'),
                    ],
                  ),
              ],
            );
          },
        );
      },
    )
  ];
  static final _textList = [
    WidgetbookUseCase(
      name: 'Font Exemple',
      builder: (context) {
        final theme = Theme.of(context).textTheme;

        getDetails(TextStyle style) {
          final size = style.fontSize!;
          final height = style.height! * size;
          // final heightFraction =
          //     '${((style.height ?? 1) * (style.fontSize ?? 1)).toInt()} / ${style.fontSize?.toInt()}';
          final weight = style.fontWeight;

          final spacing = style.letterSpacing;

          return '${height.toInt()} / ${size.toInt()} | $spacing - $weight';
        }

        final showDetails = context.knobs.boolean(
          label: 'showInfo',
          initialValue: false,
        );

        final ref = [
          Text(
            'displayLarge',
            style: theme.displayLarge,
          ),
          Text(
            'displayMedium',
            style: theme.displayMedium,
          ),
          Text(
            'displaySmall',
            style: theme.displaySmall,
          ),
          Text(
            'headlineLarge',
            style: theme.headlineLarge,
          ),
          Text(
            'headlineMedium',
            style: theme.headlineMedium,
          ),
          Text(
            'headlineSmall',
            style: theme.headlineSmall,
          ),
          Text(
            'titleLarge',
            style: theme.titleLarge,
          ),
          Text(
            'titleMedium',
            style: theme.titleMedium,
          ),
          Text(
            'titleSmall',
            style: theme.titleSmall,
          ),
          Text(
            'labelLarge',
            style: theme.labelLarge,
          ),
          Text(
            'labelMedium',
            style: theme.labelMedium,
          ),
          Text(
            'labelSmall',
            style: theme.labelSmall,
          ),
          Text(
            'bodyLarge',
            style: theme.bodyLarge,
          ),
          Text(
            'bodyMedium',
            style: theme.bodyMedium,
          ),
          Text(
            'bodySmall',
            style: theme.bodySmall,
          ),
        ];

        final spacing = double.tryParse(
              context.knobs.string(
                label: 'spacing',
                initialValue: '0',
                description: 'only for exemple',
              ),
            ) ??
            0;

        return UseCaseTest(
          builder: (BuildContext context, dynamic Function(int) onTap) {
            return ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = ref[index];
                return showDetails
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [item, Text(getDetails(item.style!))],
                      )
                    : item;
              },
              itemCount: ref.length,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: spacing,
                );
              },
            );
          },
        );
      },
    )
  ];

  static final text = [
    ..._texts,
    ..._textList,
  ];
}
