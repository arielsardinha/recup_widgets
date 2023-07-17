import 'package:exemple/support/use_case_testing.dart';
import 'package:flutter/material.dart';
import 'package:recup_storybook/recup_storybook.dart';
import 'package:widgetbook/widgetbook.dart';

sealed class WidgetbookVerticalSugestion {
  static final verticalSugestion = WidgetbookComponent(
  name: 'Vertical Suggestion',
  isInitiallyExpanded: false,
  useCases: [
    WidgetbookUseCase(
      name: 'Base',
      builder: (context) {
        return UseCaseTest(
          totalButtons: 2,
          builder: (context, onTap) {
            return RecupCardVerticalSuggestion(
              nameAvatar: context.knobs.string(
                label: "nameAvatar",
                initialValue: "Name Avatar",
              ),
              photoAvatar: context.knobs.string(
                label: "photoAvatar",
                initialValue: "",
              ),
              // backgroundColorAvatar:
              //     Theme.of(context).colorScheme.onInverseSurface,
              title: context.knobs.string(
                label: "title",
                initialValue: "Header",
              ),
              subtitle: context.knobs.string(
                label: "subtitle",
                initialValue: 'Subhead',
              ),
              photoBackground: context.knobs.string(
                label: "photoBackground",
                initialValue:
                "https://htmlcolorcodes.com/assets/images/colors/blue-gray-color-solid-background-1920x1080.png",
              ),
              onTap:
              context.knobs.boolean(label: "onTap") ? () => onTap(0) : null,
              content: context.knobs.boolean(
                label: "content",
                initialValue: true,
              )
                  ? Builder(
                builder: (context) {
                  final text = context.knobs.string(
                    label: "Exemple Text",
                    description: 'Badge Status Text',
                    initialValue: "Badge Text",
                  );

                  return text.isNotEmpty
                      ? RecupBadgeStatus(
                    text: text,
                  )
                      : Container();
                },
              )
                  : null,
              paddingBottom: context.knobs.boolean(
                label: 'paddingBottom',
                initialValue: false,
              )
                  ? const EdgeInsets.only(
                right: 16,
                bottom: 16,
              )
                  : null,
              child: context.knobs.boolean(
                label: "child",
                initialValue: true,
              )
                  ? Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => onTap(1),
                  icon: Icon(
                    Icons.favorite,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              )
                  : null,
            );
          },
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Product category',
      builder: (context) {
        return Center(
          child: RecupCardVerticalSuggestion(
            nameAvatar: context.knobs.string(
              label: "nameAvatar",
              initialValue: "Ariel",
            ),
            photoAvatar: context.knobs.string(
              label: "photoAvatar",
              initialValue: "https://github.com/arielsardinha.png",
            ),
            title: context.knobs.string(
              label: "title",
              initialValue: "Capsulas de café",
            ),
            photoBackground: context.knobs.string(
              label: "photoBackground",
              initialValue: "https://github.com/recup.png",
            ),
            subtitle: context.knobs.string(
              label: "subtitle",
              initialValue: '7 tipos aceitos',
            ),
            content: context.knobs.boolean(
              label: "content",
              initialValue: false,
            )
                ? Builder(
              builder: (context) {
                final text = context.knobs.string(
                  label: "Exemple Text",
                  description: 'Badge Status Text',
                  initialValue: "Badge Text",
                );

                return text.isNotEmpty
                    ? RecupBadgeStatus(
                  text: text,
                )
                    : Container();
              },
            )
                : null,
            paddingBottom: context.knobs.boolean(
              label: 'paddingBottom',
              initialValue: false,
            )
                ? const EdgeInsets.only(
              right: 16,
              bottom: 16,
            )
                : null,
            child: context.knobs.boolean(label: "child", initialValue: true)
                ? Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            )
                : null,
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Collection poing',
      builder: (context) {
        return Center(
          child: RecupCardVerticalSuggestion(
            nameAvatar: context.knobs.string(
              label: "nameAvatar",
              initialValue: "Ariel",
            ),
            photoAvatar: context.knobs.string(
              label: "photoAvatar",
              initialValue: "https://github.com/arielsardinha.png",
            ),
            title: context.knobs.string(
              label: "title",
              initialValue: "Intermarché Rouen Constantine",
            ),
            subtitle: context.knobs.string(
              label: "subtitle",
              initialValue: '',
            ),
            photoBackground: context.knobs.string(
              label: "photoBackground",
              initialValue: "https://github.com/recup.png",
            ),
            content: context.knobs.boolean(
              label: "content",
              initialValue: true,
            )
                ? Builder(
              builder: (context) {
                final text = context.knobs.string(
                  label: "Exemple Text",
                  description: 'Badge Status Text',
                  initialValue: "Rebox One",
                );

                return text.isNotEmpty
                    ? RecupBadgeStatus(
                  text: text,
                )
                    : Container();
              },
            )
                : null,
            paddingBottom: context.knobs.boolean(
              label: 'paddingBottom',
              initialValue: true,
            )
                ? const EdgeInsets.only(
              right: 16,
              bottom: 16,
            )
                : null,
            child: context.knobs.boolean(
              label: "child",
              initialValue: true,
            )
                ? Text(
              context.knobs
                  .string(label: "child text", initialValue: '0.3km'),
            )
                : null,
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Offer',
      builder: (context) {
        return Center(
          child: RecupCardVerticalSuggestion(
            nameAvatar: context.knobs.string(
              label: "nameAvatar",
              initialValue: "Ariel",
            ),
            photoAvatar: context.knobs.string(
              label: "photoAvatar",
              initialValue: "https://github.com/arielsardinha.png",
            ),
            title: context.knobs.string(
              label: "title",
              initialValue: "Voucher de 10€ em produtos orgâncios",
            ),
            subtitle: context.knobs.string(
              label: "subtitle",
              initialValue: '',
            ),
            photoBackground: context.knobs.string(
              label: "photoBackground",
              initialValue: "https://github.com/recup.png",
            ),
            content: context.knobs.boolean(
              label: "content",
              initialValue: true,
            )
                ? Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '100',
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            )
                : null,
            paddingBottom: context.knobs.boolean(
              label: 'paddingBottom',
              initialValue: false,
            )
                ? const EdgeInsets.only(
              right: 16,
              bottom: 16,
            )
                : null,
            child: context.knobs.boolean(label: "child", initialValue: true)
                ? Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            )
                : null,
          ),
        );
      },
    ),
    WidgetbookUseCase(
      name: 'Donation',
      builder: (context) {
        return Center(
          child: RecupCardVerticalSuggestion(
            nameAvatar: context.knobs.string(
              label: "nameAvatar",
              initialValue: "Ariel",
            ),
            photoAvatar: context.knobs.string(
              label: "photoAvatar",
              initialValue: "https://github.com/arielsardinha.png",
            ),
            title: context.knobs.string(
              label: "title",
              initialValue: "Liga contra o cancer",
            ),
            subtitle: context.knobs.string(
              label: "subtitle",
              initialValue: '256 doadores',
            ),
            photoBackground: context.knobs.string(
              label: "photoBackground",
              initialValue: "https://github.com/recup.png",
            ),
            child: context.knobs.boolean(
              label: "child",
              initialValue: true,
            )
                ? IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
                : null,
          ),
        );
      },
    ),
  ],
);

}
