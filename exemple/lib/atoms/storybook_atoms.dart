part of 'package:exemple/main.dart';

abstract class _StorybookAtoms {
  static final atomsStorybook = WidgetbookCategory(
    name: 'atoms',
    isInitiallyExpanded: false,
    children: [
      AtomsBase.icons,
      AtomsBase.text,
      AtomsBadges.badges,
      AtomChips.chips,
      _slider,
      _circleAvatar,
    ],
  );

  static final _slider = WidgetbookComponent(
    name: 'Slider Points',
    isInitiallyExpanded: false,
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
    isInitiallyExpanded: false,
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

          // return Center(
          //   child: Transform.scale(
          //     scale: 10,
          //     child: CircleAvatar(
          //       backgroundImage: NetworkImage(
          //         x,
          //       ),
          //     ),
          //   ),
          // );

          String x = context.knobs.string(
            label: 'backgroundImage',
          );

          x = 'https://$x';

          return Center(
            child: RecupCircleAvatar(
              loading: context.knobs.boolean(label: "loading"),
              name: context.knobs.string(
                label: 'name',
                initialValue: 'Recup',
              ),
              photo: x,
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
            'https://via.placeholder.com/840x640.png/0055aa?text=width',
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
}
