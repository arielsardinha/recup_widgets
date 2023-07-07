part of 'package:exemple/main.dart';

sealed class _CustomButtons {
  static final radioListTile = WidgetbookComponent(
    name: 'Radio List Tile',
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: 'Base',
        builder: (context) {
          return Center(
            child: RecupRadioListTile(
              text: context.knobs.string(
                label: 'text',
                initialValue: 'Testing Text',
              ),
              value: context.knobs.boolean(
                label: 'value',
                initialValue: true,
              ),
              color: context.knobs.color(
                label: 'color',
                initialValue: Theme.of(context).colorScheme.primary,
              ),
              onChanged: context.knobs.boolean(
                label: 'onChanged',
                initialValue: true,
              )
                  ? (p0) {}
                  : null,
              foto: context.knobs.string(
                label: 'foto',
                initialValue: 'https://github.com/boginni.png',
              ),
              name: context.knobs.string(
                label: 'name',
                initialValue: 'Icon Name',
              ),
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'No Avatar',
        builder: (context) {
          return Center(
            child: RecupRadioListTile(
              text: context.knobs.string(
                label: 'text',
                initialValue: 'Testing Text',
              ),
              value: context.knobs.boolean(
                label: 'value',
                initialValue: true,
              ),
              color: context.knobs.color(
                label: 'color',
                initialValue: Theme.of(context).colorScheme.primary,
              ),
              onChanged: context.knobs.boolean(
                label: 'onChanged',
                initialValue: true,
              )
                  ? (p0) {}
                  : null,
              foto: context.knobs.string(
                label: 'foto',
                initialValue: '',
              ),
              name: context.knobs.string(
                label: 'name',
                initialValue: '',
              ),
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'In List',
        builder: (context) {
          final rng = Random(0);
          return Center(
            child: ListView.builder(
              itemCount: int.tryParse(
                    context.knobs.string(
                      label: 'itemCount',
                      initialValue: '5',
                    ),
                  ) ??
                  5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RecupRadioListTile(
                  key: Key('$index'),
                  text: 'Item $index',
                  value: rng.nextBool(),
                  color: Theme.of(context).colorScheme.primary,
                  onChanged: (p0) {},
                );
              },
            ),
          );
        },
      ),
      WidgetbookUseCase(
        name: 'Different Colors',
        builder: (context) {
          final rng = Random(0);
          return Center(
            child: ListView.builder(
              itemCount: int.tryParse(
                    context.knobs.string(
                      label: 'itemCount',
                      initialValue: '100',
                    ),
                  ) ??
                  5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RecupRadioListTile(
                  key: Key('$index'),
                  text: 'Item $index',
                  value: rng.nextBool(),
                  color: Colors.primaries[index % Colors.primaries.length],
                  onChanged: (p0) {},
                  name: 'x',
                );
              },
            ),
          );
        },
      ),
    ],
  );
}
