## Features (ChatGPT)
Este é um pacote Flutter que fornece uma coleção de widgets personalizados, juntamente com um Storybook integrado e um conjunto de ícones. O objetivo deste pacote é facilitar o desenvolvimento de interfaces de usuário elegantes e intuitivas em aplicativos Flutter.

#### Recursos

Widgets personalizados: Este pacote oferece uma ampla variedade de widgets personalizados prontos para uso. Esses widgets foram projetados para serem altamente configuráveis ​​e adaptáveis ​​às necessidades do seu aplicativo.

Storybook integrado: O pacote inclui um Storybook integrado, permitindo que você visualize e interaja com os widgets fornecidos. Isso facilita a exploração das opções de configuração disponíveis para cada widget e a visualização dos diferentes estados e aparências.

Conjunto de ícones: O pacote também oferece um conjunto de ícones pré-definidos, abrangendo uma ampla gama de categorias. Esses ícones podem ser usados ​​para fornecer uma estética visual consistente e profissional em seu aplicativo.

## Getting started

Incluir a referência da fonte no `pubspec.yaml`

```yaml
dependencies:
    recup_storybook:
# Caso esteja Utilizando story_book
#       path: ../
        git: https://github.com/arielsardinha/recup_widgets

# The following section is specific to Flutter packages.
flutter:
  fonts:
    - family: RecupIcon
      fonts:
        - asset: packages/recup_storybook/assets/fonts/recup-icon-font.ttf
```
## Usage

```dart
import 'package:recup_storybook/recup_storybook.dart';
```

```dart
const Icon(
    RecupIcon.recoin,
)
```
