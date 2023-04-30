// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

enum RecupCarouselSize {
  NORMAL(150),
  LARGE(240);

  final double size;
  const RecupCarouselSize(this.size);
}

class RecupCarouselItem<T> {
  final String? imageLink;
  final Uint8List? imageBit;
  final T item;

  RecupCarouselItem({
    this.imageLink,
    required this.item,
    this.imageBit,
  });
}

class RecupCarousel<T> extends StatefulWidget {
  final List<RecupCarouselItem<T>> itens;
  final RecupCarouselSize height;
  final void Function(T item)? onChange, onTap;
  final bool noSliderPoints;
  const RecupCarousel({
    Key? key,
    required this.itens,
    this.onChange,
    this.onTap,
    this.height = RecupCarouselSize.NORMAL,
    this.noSliderPoints = false,
  }) : super(key: key);

  @override
  State<RecupCarousel> createState() => _RecupCarouselState();
}

class _RecupCarouselState extends State<RecupCarousel> {
  int _current = 0;
  bool autoPlay = false;

  @override
  void initState() {
    autoPlay = widget.noSliderPoints ? false : widget.itens.length > 1;
    super.initState();
  }

  DecorationImage? getDecorationImageFromCarouselItem(RecupCarouselItem item) {
    if (item.imageLink != null) {
      return DecorationImage(
        image: NetworkImage(item.imageLink!),
        fit: BoxFit.cover,
      );
    }

    if (item.imageBit != null) {
      return DecorationImage(
        image: MemoryImage(item.imageBit!),
        fit: BoxFit.cover,
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: widget.noSliderPoints ? 0 : 24),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              scrollPhysics: widget.noSliderPoints
                  ? const NeverScrollableScrollPhysics()
                  : null,
              height: widget.height.size,
              autoPlay: autoPlay,
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                if (widget.onChange != null) {
                  widget.onChange!(widget.itens[index].item);
                }
                setState(() {
                  _current = index;
                });
              },
            ),
            items: widget.itens
                .map(
                  (item) => InkWell(
                    onTap: widget.onTap != null
                        ? () {
                            widget.onTap!(item);
                          }
                        : null,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        image: getDecorationImageFromCarouselItem(item),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          if (!widget.noSliderPoints)
            Positioned(
              bottom: -24,
              left: 0,
              right: 0,
              child: RecupSliderPoints(
                points: widget.itens.map((e) => e.imageLink ?? '').toList(),
                currentPoint: _current,
              ),
            ),
        ],
      ),
    );
  }
}
