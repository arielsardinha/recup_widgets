import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:widgetbook/widgetbook.dart';

sealed class WidgetbookBuilders {
  static final widget = WidgetbookComponent(
    name: 'Builders',
    useCases: [
      WidgetbookUseCase(
        name: 'HorizontalScrollView',
        builder: (context) {
          return Center(
            child: RecupHorizontalScrollView(
                childrenSpacing: double.tryParse(context.knobs.string(
                      label: 'childrenSpacing',
                      initialValue: '16',
                    )) ??
                    16,
                padding:
                    context.knobs.boolean(label: 'padding', initialValue: true)
                        ? const EdgeInsets.symmetric(horizontal: 16)
                        : null,
                children: [
                  RecupFilterChip(
                    text: 'FilterChip',
                    onTap: () {},
                    selected: false,
                  ),
                  RecupFilterChip(
                    text: 'FilterChip',
                    onTap: () {},
                    selected: false,
                  ),
                  RecupFilterChip(
                    text: 'FilterChip',
                    onTap: () {},
                    selected: false,
                  ),
                  RecupFilterChip(
                    text: 'FilterChip',
                    onTap: () {},
                    selected: false,
                  ),
                ]),
          );
        },
      ),
    ],
  );
}
