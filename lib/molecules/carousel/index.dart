// ignore_for_file: constant_identifier_names

part of 'package:recup_storybook/recup_storybook.dart';

enum RecupCarouselSize {
  NORMAL(150),
  LARGE(240);

  final double size;
  const RecupCarouselSize(this.size);
}

class RecupCarousel extends StatefulWidget {
  final List<String> images;
  final RecupCarouselSize height;
  final void Function(String image, int indice)? onChange;
  final bool noSliderPoints;
  const RecupCarousel({
    Key? key,
    required this.images,
    this.onChange,
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
    autoPlay = widget.noSliderPoints ? false : widget.images.length > 1;
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
                  widget.onChange!(widget.images[index], index);
                }
                setState(() {
                  _current = index;
                });
              },
            ),
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
          ),
          if (!widget.noSliderPoints)
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
