import 'dart:math';

import 'package:exemple/atoms/components/badges.dart';
import 'package:exemple/atoms/components/chips.dart';
import 'package:exemple/atoms/components/circle_avatar.dart';
import 'package:exemple/organisms/builders/horizontal_scrollview.dart';
import 'package:exemple/organisms/cards/vertical_big_number.dart';
import 'package:exemple/organisms/cards/vertical_suggestion.dart';
import 'package:exemple/organisms/carousel/carousel_use_case.dart';
import 'package:exemple/plugins/transform_addon.dart';
import 'package:exemple/plugins/voidcallback_addon.dart';
import 'package:exemple/style/storybook_styles.dart';
import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:recup_storybook/themes/themes.dart';
import 'package:widgetbook/widgetbook.dart';

part 'atoms/storybook_atoms.dart';

part 'molecules/buttons/custom.dart';

part 'molecules/buttons/standard.dart';

part 'molecules/storybook_molecules.dart';

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
        MaterialThemeAddon(
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
          // themeBuilder: (context, theme, child) {
          //   return MaterialApp(
          //     debugShowCheckedModeBanner: false,
          //     theme: theme,
          //     home: child,
          //   );
          // },
        ),
        VoidCallbackAddon(),
        TransformAddon(),
      ],
      directories: [
        StoryBookStyles.stylesBook,
        _StorybookAtoms.atomsStorybook,
        _StorybookMolecules.storybookMolecules,
        _StorybookOrganismis.widgets,
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
