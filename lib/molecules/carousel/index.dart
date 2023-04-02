// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

enum RecupCarouselSize {
  NORML(150),
  LARGE(200);

  final double size;
  const RecupCarouselSize(this.size);
}

class RecupCarousel extends StatefulWidget {
  final List<String> images;
  final RecupCarouselSize height;
  final void Function(String image, int indice)? onChange;
  const RecupCarousel({
    Key? key,
    required this.images,
    this.onChange,
    this.height = RecupCarouselSize.NORML,
  }) : super(key: key);

  @override
  State<RecupCarousel> createState() => _RecupCarouselState();
}

class _RecupCarouselState extends State<RecupCarousel> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(bottom: 24),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CarouselSlider(
            items: widget.images
                .map(
                  (image) => Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.cover),
                    ),
                  ),
                )
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
              height: widget.height.size,
              autoPlay: widget.images.length > 1,
              viewportFraction: 1,
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              onPageChanged: (index, reason) {
                if (widget.onChange != null) {
                  widget.onChange!(widget.images[index], index);
                }
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: -24,
            left: 0,
            right: 0,
            child: RecupSliderPoints(
              points: widget.images,
              currentPoint: _current,
            ),
          ),
        ],
      ),
    );
  }
}
