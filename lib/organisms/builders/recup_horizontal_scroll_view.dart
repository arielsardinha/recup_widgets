part of 'package:recup_storybook/recup_storybook.dart';

class RecupHorizontalScrollView extends StatelessWidget {
  const RecupHorizontalScrollView({
    super.key,
    this.padding,
    this.itemPadding,
    required this.items,
    this.physics = const AlwaysScrollableScrollPhysics(
      parent: BouncingScrollPhysics(),
    ),
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final EdgeInsets? padding, itemPadding;
  final List<Widget> items;
  final ScrollPhysics physics;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
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
              children: items
                  .map((e) => Padding(
                        padding: itemPadding ?? EdgeInsets.zero,
                        child: e,
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
