import 'package:exemple/support/use_case_testing.dart';
import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:widgetbook/widgetbook.dart';

sealed class CarouselUseCases {
  static final carrousel = WidgetbookComponent(
    name: 'Carousel',
    useCases: [
      WidgetbookUseCase(
        name: 'Default',
        builder: (context) {
          return UseCaseTest(
            showCounters: true,
            totalButtons: 2,
            builder: (context, onTap) {
              // final fit = ;

              return Center(
                child: RecupCarousel(
                  height: context.knobs.list(
                    label: "height",
                    options: const [
                      RecupCarouselSize.NORMAL,
                      RecupCarouselSize.LARGE
                    ],
                  ),
                  noSliderPoints: context.knobs.boolean(
                    label: "noSliderPoints",
                    initialValue: false,
                  ),
                  borderIsRadiusCircle: context.knobs.boolean(
                    label: "borderIsRadiusCircle",
                    initialValue: false,
                  ),
                  onTap: context.knobs.boolean(
                    label: "onTap",
                    initialValue: true,
                  )
                      ? (item) => onTap(0)
                      : null,
                  onChange: context.knobs.boolean(
                    label: "onChange",
                    initialValue: true,
                  )
                      ? (item) => onTap(1)
                      : null,
                  itemHorizontalPadding: double.tryParse(context.knobs.string(
                          label: 'itemHorizontalPadding', initialValue: '0')) ??
                      0,
                  viewportFraction: double.tryParse(context.knobs.string(
                          label: 'viewportFraction', initialValue: '1.0')) ??
                      0,
                  fit: context.knobs.list(
                    label: 'fit',
                    options: BoxFit.values,
                    initialOption: BoxFit.cover,
                    labelBuilder: (value) => value.name,
                  ),
                  itens: const [
                    'https://fastly.picsum.photos/id/510/640/480.jpg?hmac=n88nNp-y62OnWmFemxAO9wrDzu9QZliLHRJapG-pPOU',
                    'https://fastly.picsum.photos/id/173/640/480.jpg?hmac=VlYZunMTD4M7crt69rx6e6s5hsGhIcBvBD0jEObPlYw',
                    'https://github.com/backgroud.png',
                    'https://fastly.picsum.photos/id/294/640/480.jpg?hmac=qpZzbtdj-Kjv0V1GPT9lob8n9n1kgrWu6oxvjiyXJKE',
                    'https://fastly.picsum.photos/id/289/640/480.jpg?hmac=xyBjKWS7PbDMtTO97vL6JRaxa2MnVQNqTaqnoLwYMa4',
                  ].map((e) => RecupCarouselItem(image: e, item: e)).toList(),
                ),
              );
            },
          );
        },
      ),
    ],
  );
}
