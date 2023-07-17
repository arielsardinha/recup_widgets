part of 'package:recup_storybook/recup_storybook.dart';

class RecupHorizontalScrollView extends StatelessWidget {
  const RecupHorizontalScrollView({
    super.key,
    this.padding,
    this.childrenSpacing = 16,
    required this.children,
    this.physics = const AlwaysScrollableScrollPhysics(
      parent: BouncingScrollPhysics(),
    ),
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final EdgeInsets? padding;
  final double childrenSpacing;
  final List<Widget> children;
  final ScrollPhysics physics;
  final MainAxisAlignment mainAxisAlignment;

  static RecupHorizontalScrollView builder<T>({
    Key? key,
    EdgeInsets? padding,
    double childrenSpacing = 16,
    required List<T> items,
    required Widget Function(int index, T item) builder,
    ScrollPhysics physics = const AlwaysScrollableScrollPhysics(
      parent: BouncingScrollPhysics(),
    ),
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  }) {
    int i = 0;
    final list = items.map((e) => builder(i, items[i++])).toList();

    return RecupHorizontalScrollView(
      key: key,
      padding: padding,
      childrenSpacing: 16,
      mainAxisAlignment: mainAxisAlignment,
      physics: physics,
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: physics,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minWidth: MediaQuery.of(context).size.width),
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: MainAxisSize.max,
            children: children
                .map((e) => Padding(
                      padding: EdgeInsets.only(
                        left: currentIndex++ == 0 ? 0 : childrenSpacing * 0.5,
                        right: currentIndex == children.length ? 0 : childrenSpacing * 0.5,
                      ),
                      child: e,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
