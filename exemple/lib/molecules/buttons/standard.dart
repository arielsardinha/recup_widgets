part of 'package:exemple/main.dart';

sealed class _StandardButtons {
  static final standartButtons = [
    WidgetbookUseCase(
      name: 'Filled Button',
      builder: (context) {
        final knobVisualDensity = context.knobs.list(
          label: 'Visual Density',
          options: [
            VisualDensityButton.standard,
            VisualDensityButton.comfortable,
            VisualDensityButton.compact
          ],
          labelBuilder: (value) => value.name,
        );

        return Center(
          child: RecupFilledButton(
            recupButtonStyle: RecupButtonStyle(
              visualDensityButton: knobVisualDensity,
            ),
            onPressed: context.knobs.boolean(
              label: "onPressed",
              initialValue: true,
            )
                ? () {}
                : null,
            child: Text(
              context.knobs.string(label: 'Text', initialValue: 'Button'),
            ),
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Outlined Button',
      builder: (context) {
        final knobVisualDensity = context.knobs.list(
          label: 'Visual Density',
          options: [
            VisualDensityButton.standard,
            VisualDensityButton.comfortable,
            VisualDensityButton.compact
          ],
          labelBuilder: (value) => value.name,
        );

        return Center(
          child: RecupOutlinedButton(
            recupButtonStyle: RecupButtonStyle(
              visualDensityButton: knobVisualDensity,
            ),
            onPressed: context.knobs.boolean(
              label: "onPressed",
              initialValue: true,
            )
                ? () {}
                : null,
            child: Text(
              context.knobs.string(label: 'Text', initialValue: 'Button'),
            ),
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Text Button',
      builder: (context) {
        final knobVisualDensity = context.knobs.list(
          label: 'Visual Density',
          options: [
            VisualDensityButton.standard,
            VisualDensityButton.comfortable,
            VisualDensityButton.compact
          ],
          labelBuilder: (value) => value.name,
        );

        return Center(
          child: RecupTextButton(
            recupButtonStyle: RecupButtonStyle(
              visualDensityButton: knobVisualDensity,
            ),
            onPressed: context.knobs.boolean(
              label: "onPressed",
              initialValue: true,
            )
                ? () {}
                : null,
            child: Text(
              context.knobs.string(label: 'Text', initialValue: 'Button'),
            ),
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Elevated Button',
      builder: (context) {
        final knobVisualDensity = context.knobs.list(
          label: 'Visual Density',
          options: [
            VisualDensityButton.standard,
            VisualDensityButton.comfortable,
            VisualDensityButton.compact
          ],
          labelBuilder: (value) => value.name,
        );

        return Center(
          child: RecupElevatedButton(
            recupButtonStyle: RecupButtonStyle(
              visualDensityButton: knobVisualDensity,
            ),
            onPressed: context.knobs.boolean(
              label: "onPressed",
              initialValue: true,
            )
                ? () {}
                : null,
            child: Text(
              context.knobs.string(label: 'Text', initialValue: 'Button'),
            ),
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Tonal Button',
      builder: (context) {
        final knobVisualDensity = context.knobs.list(
          label: 'Visual Density',
          options: [
            VisualDensityButton.standard,
            VisualDensityButton.comfortable,
            VisualDensityButton.compact
          ],
          labelBuilder: (value) => value.name,
        );

        return Center(
          child: RecupTonalButton(
            recupButtonStyle: RecupButtonStyle(
              visualDensityButton: knobVisualDensity,
            ),
            onPressed: context.knobs.boolean(
              label: "onPressed",
              initialValue: true,
            )
                ? () {}
                : null,
            child: Text(
              context.knobs.string(label: 'Text', initialValue: 'Button'),
            ),
          ),
        );
      },
    ),
  ];
}
