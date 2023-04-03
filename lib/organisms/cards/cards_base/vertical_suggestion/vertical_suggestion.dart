part of 'package:recup_storybook/recup_storybook.dart';

class RecupCardOne extends StatelessWidget {
  final String backgroundImage;
  final Widget? iconButton;
  final String titulo;
  final String subtitulo;
  final Widget? child;
  final bool isSmallCard;
  final Widget? widgetTitle;
  final void Function()? onTap;

  final double? height;
  const RecupCardOne({
    Key? key,
    this.onTap,
    this.backgroundImage = '',
    this.iconButton,
    this.titulo = '',
    this.subtitulo = '',
    this.child,
    this.isSmallCard = true,
    this.widgetTitle,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    final titleWidget = Text(
      titulo,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: theme.textTheme.titleSmall,
    );
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
        child: SizedBox(
          height: height ?? (isSmallCard ? 240 : height),
          width: isSmallCard ? 176 : mediaQuerySize.width * 0.9,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: theme.colorScheme.background,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: isSmallCard ? 110 : 260,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(backgroundImage),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 15, right: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: iconButton,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Visibility(
                              visible: isSmallCard,
                              replacement: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: widgetTitle != null
                                        ? mediaQuerySize.width * 0.55
                                        : mediaQuerySize.width * 0.75,
                                    child: titleWidget,
                                  ),
                                  Visibility(
                                    visible: widgetTitle != null,
                                    child: widgetTitle ?? const SizedBox(),
                                  )
                                ],
                              ),
                              child: titleWidget,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5, bottom: 10),
                              child: Text(subtitulo,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 16, right: 16, left: 16),
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
