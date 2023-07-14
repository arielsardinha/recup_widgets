import 'package:exemple/support/use_case_testing.dart';
import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:recup_storybook/themes/themes.dart';
import 'package:widgetbook/widgetbook.dart';

sealed class AtomsAvatar {
  static final circleAvatar = WidgetbookComponent(
    name: 'Circle Avatar',
    isInitiallyExpanded: false,
    useCases: [
      WidgetbookUseCase(
        name: 'Base',
        builder: (context) {
          final backgroundColor =
              context.knobs.listOrNull(
            label: "backgroundColor",
            options: RecupTheme.colorSchemeList(context).entries.toList(),
            initialOption: null,
            labelBuilder: (value) => value != null ? (value.key) : 'Null',
          );

          final photo = context.knobs.string(
            label: 'photo',
            initialValue: '',
          );

          return UseCaseTest(
            builder: (context, onTap) {
              return RecupCircleAvatar(
                loading: context.knobs.boolean(label: "loading"),
                name: context.knobs.string(
                  label: 'name',
                  initialValue: 'Base',
                ),
                photo: photo,
                radius: double.tryParse(
                      context.knobs.string(
                        label: 'radius',
                        initialValue: "20",
                        description: 'default = 20',
                      ),
                    ) ??
                    20,
                backgroundColor: backgroundColor?.value,
                onTap: context.knobs.boolean(
                  label: 'onTap',
                  initialValue: true,
                )
                    ? () {}
                    : null,
              );
            },
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
                  ) ??
                  20,
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
                  ) ??
                  20,
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
                  ) ??
                  20,
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
                        radius: radius ?? 20,
                        backgroundColor: backgroundColor,
                        onTap: onTap,
                        fit: fit ?? BoxFit.cover,
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
