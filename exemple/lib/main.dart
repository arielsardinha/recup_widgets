import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';
import 'package:recup_storybook/themes/themes.dart';
import 'package:recup_storybook/recup_storybook.dart';
part 'atoms/storybook_atoms.dart';
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
      categories: [
        _StorybookAtoms.atomsStorybook,
        _StorybookMolecules.storybookMolecules,
        _StorybookOrganismis.organismisbookMolecules,
        // WidgetbookCategory(name: 'tempate'),
        // WidgetbookCategory(name: 'pages')
      ],
      appInfo: AppInfo(
        name: 'Widgetbook Example',
      ),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: Themes.themeDataLight,
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: Themes.themeDataDark,
        ),
      ],
      devices: [
        Samsung.s10,
      ],
    );
  }
}
