import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:widgetbook/widgetbook.dart';

sealed class WidgetbookVerticalBigNumer {
  static final verticalBigNumber = WidgetbookComponent(
    name: "Vertical Bignumber",
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: "Base",
        builder: (context) {
          return Center(
            child: RecupCardVerticalBignumber(
              title: context.knobs.string(
                label: "title",
                initialValue: "Header",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "Subhead",
              ),
              onPressed:
                  context.knobs.boolean(label: "onPressed") ? () {} : null,
              widget: const RecupCircleAvatar(
                name: "A",
              ),
              iconCircleBackground: context.knobs.boolean(
                label: 'iconCircleBackground',
                initialValue: true,
              ),
              child: context.knobs.boolean(label: "child")
                  ? const Icon(Icons.reduce_capacity_outlined)
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Icon",
        builder: (context) {
          return Center(
            child: RecupCardVerticalBignumber(
              title: context.knobs.string(
                label: "title",
                initialValue: "Total",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "Subhead",
              ),
              onPressed:
                  context.knobs.boolean(label: "onPressed") ? () {} : null,
              widget: const Icon(Icons.sync),
              iconCircleBackground: context.knobs.boolean(
                label: 'iconCircleBackground',
                initialValue: true,
              ),
              child: context.knobs.boolean(label: "child")
                  ? const Icon(Icons.reduce_capacity_outlined)
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Ecoscore",
        builder: (context) {
          double leftPaddingGain = 8;
          IconData icon = Icons.chevron_right;
          return Center(
            child: RecupCardVerticalBignumber(
              title: context.knobs.string(
                label: "title",
                initialValue: "Total",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "",
              ),
              onPressed:
                  context.knobs.boolean(label: "onPressed") ? () {} : null,
              widget: Icon(
                RecupIcon.a,
                size: 40,
                color: Theme.of(context).colorScheme.primary,
              ),
              iconCircleBackground: context.knobs.boolean(
                label: 'iconCircleBackground',
                initialValue: false,
              ),
              child: context.knobs.boolean(label: "child", initialValue: true)
                  ? Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 4 * leftPaddingGain),
                          child: Icon(
                            icon,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3 * leftPaddingGain),
                          child: Icon(
                            icon,
                            color: Colors.orange,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2 * leftPaddingGain),
                          child: Icon(
                            icon,
                            color: Colors.yellow,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1 * leftPaddingGain),
                          child: Icon(
                            icon,
                            color: Colors.greenAccent,
                          ),
                        ),
                        Icon(
                          icon,
                          color: Colors.green,
                        ),
                      ],
                    )
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Percentage",
        builder: (context) {
          return Center(
            child: RecupCardVerticalBignumber(
              title: context.knobs.string(
                label: "title",
                initialValue: "Header",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "Subhead",
              ),
              onPressed:
                  context.knobs.boolean(label: "onPressed") ? () {} : null,
              widget: CircularProgressIndicator(
                value: double.tryParse(
                  context.knobs.string(
                    label: 'Progress',
                    initialValue: '0.25',
                    description: 'Usando CircularProgressIndicator',
                  ),
                ),
              ),
              iconCircleBackground: context.knobs.boolean(
                label: 'iconCircleBackground',
                initialValue: true,
              ),
              child: context.knobs.boolean(label: "child")
                  ? const Icon(Icons.reduce_capacity_outlined)
                  : null,
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: "Donation",
        builder: (context) {
          return Center(
            child: RecupCardVerticalBignumber(
              title: context.knobs.string(
                label: "title",
                initialValue: "Total",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: "Subtitle",
              ),
              onPressed:
                  context.knobs.boolean(label: "onPressed") ? () {} : null,
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
      WidgetbookUseCase(
        name: "BigData",
        builder: (context) {
          final  theme = Theme.of(context);
          return Center(
            child: RecupHorizontalScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                RecupCardVerticalBignumber(
                  widget: Icon(
                    RecupIcon.co2_down,
                    color: theme.colorScheme.primary,
                  ),
                  title: '',
                  subtitle: 'de gas carbônico evitado',
                ),
                RecupCardVerticalBignumber(
                  widget: Icon(
                    RecupIcon.donation,
                    color: theme.colorScheme.primary,
                  ),
                  title: '256',
                  subtitle: 'em doação graças à coleta',
                ),
                RecupCardVerticalBignumber(
                  widget: Icon(
                    RecupIcon.cycle,
                    color: theme.colorScheme.primary,
                  ),
                  title: '256',
                  subtitle: 'de unidades coletadas',
                ),
                RecupCardVerticalBignumber(
                  widget: Icon(
                    RecupIcon.weight,
                    color: theme.colorScheme.primary,
                  ),
                  title: '456 kg',
                  subtitle: 'de materiais recuperados',
                ),
                RecupCardVerticalBignumber(
                  widget: Icon(
                    RecupIcon.flag,
                    color: theme.colorScheme.primary,
                  ),
                  title: '20',
                  subtitle: 'pontos de coleta',
                ),
              ],
            ),
          );
        },
      ),
    ],
  );
}
