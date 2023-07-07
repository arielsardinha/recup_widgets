// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

enum RecupCarouselSize {
  NORMAL(150),
  LARGE(240);

  final double size;
  const RecupCarouselSize(this.size);
}

class RecupCarouselItem<T> {
  final String image;
  final Color? color;
  final T item;

  RecupCarouselItem({required this.image, required this.item, this.color});
}

class RecupCarousel<T> extends StatefulWidget {
  final List<RecupCarouselItem<T>> itens;
  final RecupCarouselSize height;
  final void Function(T item)? onChange, onTap;
  final bool noSliderPoints, borderIsRadiusCircle;
  final BoxFit? fit;
  const RecupCarousel({
    Key? key,
    required this.itens,
    this.onChange,
    this.onTap,
    this.height = RecupCarouselSize.NORMAL,
    this.noSliderPoints = false,
    this.borderIsRadiusCircle = false,
    this.fit,
  }) : super(key: key);

  @override
  State<RecupCarousel<T>> createState() => _RecupCarouselState<T>();
}

class _RecupCarouselState<T> extends State<RecupCarousel<T>> with ImageValidationMixin{
  int _current = 0;
  bool autoPlay = false;

  @override
  void initState() {
    autoPlay = widget.noSliderPoints ? false : widget.itens.length > 1;

    super.initState();
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
                            widget.onTap!(item.item);
                          }
                        : null,
                    child: Container(
                      decoration: BoxDecoration(
                        color: item.color,
                        borderRadius: BorderRadius.all(
                          Radius.circular(widget.borderIsRadiusCircle ? 20 : 0),
                        ),
                        image: isPhoto(item.image) ? DecorationImage(
                          image: NetworkImage(item.image),
                          fit: widget.fit ?? BoxFit.cover,
                        ) : null,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          if (!widget.noSliderPoints && !(widget.itens.length <= 1))
            Positioned(
              bottom: -24,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: RecupSliderPoints(
                  points: widget.itens.map((e) => e.image).toList(),
                  currentPoint: _current,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
