import 'dart:math';

import 'package:exemple/atoms/components/badges.dart';
import 'package:exemple/atoms/components/chips.dart';
import 'package:exemple/atoms/components/circle_avatar.dart';
import 'package:exemple/organisms/carousel/carousel_use_case.dart';
import 'package:exemple/style/storybook_styles.dart';
import 'package:exemple/support/use_case_testing.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';
import 'package:recup_storybook/themes/themes.dart';
import 'package:recup_storybook/recup_storybook.dart';

part 'atoms/storybook_atoms.dart';
part 'molecules/storybook_molecules.dart';
part 'molecules/buttons/custom.dart';
part 'molecules/buttons/standard.dart';
part 'organisms/storybook_organisms.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        DeviceFrameAddon(
          initialDevice: Devices.android.samsungGalaxyA50,
          devices: [
            Devices.android.smallPhone,
            Devices.android.samsungGalaxyA50,
            Devices.android.bigPhone,
            Devices.ios.iPhone13,
          ],
        ),
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: RecupTheme.themeDataLight,
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: RecupTheme.themeDataDark,
            ),
          ],
          themeBuilder: (context, theme, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: theme,
              home: child,
            );
          },
        )
      ],
      directories: [
        StoryBookStyles.stylesBook,
        _StorybookAtoms.atomsStorybook,
        _StorybookMolecules.storybookMolecules,
        _StorybookOrganismis.organismisbookMolecules,
      ],
    );
    // return Widgetbook.material(
    //   categories: [
    //     _StorybookAtoms.atomsStorybook,
    //     _StorybookMolecules.storybookMolecules,
    //     _StorybookOrganismis.organismisbookMolecules,
    //     // WidgetbookCategory(name: 'tempate'),
    //     // WidgetbookCategory(name: 'pages')
    //   ],
    //   appInfo: AppInfo(
    //     name: 'Widgetbook Example',
    //   ),
    //   themes: [
    // WidgetbookTheme(
    //   name: 'Light',
    //   data: RecupTheme.themeDataLight,
    // ),
    // WidgetbookTheme(
    //   name: 'Dark',
    //   data: RecupTheme.themeDataDark,
    // ),
    //   ],
    //   devices: [
    //     Samsung.s10,
    //   ],
    // );
  }
}
