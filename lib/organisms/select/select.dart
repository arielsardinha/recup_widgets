part of 'package:recup_storybook/recup_storybook.dart';

// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// import 'package:recup_storybook/recup_storybook.dart';
// import 'package:recup_storybook/themes/themes.dart';
//
// // class RecupSelectTest<T> extends StatefulWidget {
// //   final ValueNotifier<List<RecupSelectItem<T>>> items;
// //   const RecupSelectTest({super.key, required this.items});
//
// //   @override
// //   State<RecupSelectTest<T>> createState() => _RecupSelectTestState<T>();
// // }
//
// // class _RecupSelectTestState<T> extends State<RecupSelectTest<T>> {
// //   final ValueNotifier<List<RecupSelectItem<T>>> filteredItems =
// //       ValueNotifier([]);
//
// //   void filterItems(String filter) {
// //     if (filter.isNotEmpty) {
// //       filteredItems.value = widget.items.value
// //           .where((x) => x.text.toLowerCase().startsWith(filter.toLowerCase()))
// //           .toList()
// //           .obs;
// //     } else {
// //       filteredItems.value = widget.items.value;
// //     }
// //   }
//
// //   @override
// //   void initState() {
// //     super.initState();
// //     filterItems('');
// //   }
//
// //   @override
// //   Widget build(BuildContext context) {
// //     return SearchAnchor.bar(
// //       isFullScreen: false,
// //       suggestionsBuilder: (BuildContext context, SearchController controller) {
// //         filterItems(controller.text);
// //         return List<Widget>.generate(
// //           filteredItems.value.length,
// //           (int index) {
// //             final item = filteredItems.value[index];
// //             return ListTile(
// //               titleAlignment: ListTileTitleAlignment.center,
// //               title: Text("${item.text} ${controller.text}"),
// //             );
// //           },
// //         );
// //       },
// //     );
// //   }
// // }
//
// class RecupSelectItem<T> {
//   String text;
//   T value;
//
//   RecupSelectItem({required this.text, required this.value});
// }
//
// class RecupSelect<T> extends StatefulWidget {
//   final int totalPages;
//   final void Function(String)? onChanged;
//   final void Function(RecupSelectItem<T>?)? onTapItem;
//   final Future<void> Function(int page)? infinity;
//   final void Function(String?)? onDelete;
//   final TextEditingController? controller;
//   final String? topText;
//   final String? hintText;
//   final String? Function(String?)? validator;
//   final ValueNotifier<List<RecupSelectItem<T>>> items;
//   final double? width;
//   final String label;
//   final void Function()? onFocusChange;
//   final Widget? Function(int)? preffixIconTable;
//   final bool autofocus;
//   final TextInputType? keyboardType;
//
//   const RecupSelect({
//     Key? key,
//     this.infinity,
//     required this.items,
//     this.controller,
//     this.onTapItem,
//     this.totalPages = 20,
//     this.onChanged,
//     this.validator,
//     this.width,
//     this.onDelete,
//     this.topText,
//     this.hintText,
//     this.label = '',
//     this.onFocusChange,
//     this.preffixIconTable,
//     this.autofocus = false,
//     this.keyboardType,
//   }) : super(key: key);
//
//   @override
//   State<RecupSelect<T>> createState() => _RecupSelect<T>();
// }
//
// class _RecupSelect<T> extends State<RecupSelect<T>> {
//   late final TextEditingController controller;
//   late void Function(RecupSelectItem<T>?) onTapItem;
//   late final theme = Theme.of(context);
//   late final FocusScopeNode currentFocus = FocusScope.of(context);
//   late final CustomColor customColor = RecupTheme.custonColor(context);
//   int page = 1;
//
//   final ScrollController _scrollController = ScrollController();
//   ValueNotifier<List<RecupSelectItem<T>>> filteredItems = ValueNotifier([]);
//
//   double boxList = 0.0;
//
//   Future onRefresh() async {
//     if (page <= widget.totalPages && widget.infinity != null) {
//       await widget.infinity!(page);
//       page++;
//     }
//   }
//
//   void filterItems(String filter) {
//     if (filter.isNotEmpty) {
//       filteredItems.value = widget.items.value
//           .where((x) => x.text.toLowerCase().startsWith(filter.toLowerCase()))
//           .toList()
//           .obs;
//     } else {
//       filteredItems.value = widget.items.value;
//     }
//   }
//
//   Future<void> setStateDalay() async {
//     await Future.delayed(const Duration(seconds: 2));
//     filterItems("");
//     setState(() {});
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     controller = widget.controller ?? TextEditingController();
//     onTapItem = widget.onTapItem ?? (item) {};
//
//     setStateDalay();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _scrollController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: widget.width ?? double.infinity,
//       child: Column(
//         children: [
//           FocusScope(
//             onFocusChange: (value) {
//               if (value && widget.items.value.isNotEmpty) {
//                 boxList = widget.items.value.length <= 5 ? 200 : 350;
//                 setState(() {});
//               } else if (!value) {
//                 boxList = 0.0;
//                 setState(() {});
//               }
//               if (widget.onFocusChange != null) {
//                 widget.onFocusChange!();
//               }
//             },
//             child: Container(
//               margin: EdgeInsets.only(bottom: boxList > 0 ? 10 : 0),
//               child: AnimatedBuilder(
//                   animation: widget.items,
//                   builder: (context, child) {
//                     return RecupTextFormField(
//                       keyboardType: widget.items.value.length < 10
//                           ? TextInputType.none
//                           : widget.keyboardType,
//                       validator: widget.validator,
//                       controller: controller,
//                       hintText: widget.hintText ?? 'Infome',
//                       label: widget.label,
//                       enabled: widget.items.value.isNotEmpty,
//                       autofocus: widget.autofocus,
//                       suffixIcon: Container(
//                         padding: const EdgeInsets.only(right: 5),
//                         width: 80,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   if (boxList > 0) {
//                                     if (!currentFocus.hasPrimaryFocus) {
//                                       currentFocus.unfocus();
//                                     }
//                                     boxList = 0.0;
//                                   } else {
//                                     boxList = widget.items.value.length <= 5 &&
//                                             widget.items.value.isNotEmpty
//                                         ? 200
//                                         : 350;
//                                   }
//                                 });
//                               },
//                               child: Icon(
//                                 (boxList > 0)
//                                     ? RecupIcon.direction_up
//                                     : RecupIcon.direction_down,
//                                 color: widget.items.value.isEmpty
//                                     ? null
//                                     : theme.colorScheme.primary,
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 8,
//                             ),
//                             if (boxList != 0.0)
//                               GestureDetector(
//                                 onTap: () {
//                                   controller.clear();
//                                   filterItems('');
//                                   if (widget.onDelete != null) {
//                                     widget.onDelete!(controller.text);
//                                   }
//
//                                   if (!currentFocus.hasPrimaryFocus) {
//                                     currentFocus.unfocus();
//                                   }
//                                   if (boxList > 0.0) {
//                                     boxList = 0.0;
//                                   }
//                                   onTapItem(null);
//                                   setState(() {});
//                                 },
//                                 child: Container(
//                                   margin: const EdgeInsets.only(left: 10),
//                                   child: Icon(
//                                     RecupIcon.close_1,
//                                     color: controller.text != ''
//                                         ? theme.colorScheme.error
//                                         : Colors.grey,
//                                   ),
//                                 ),
//                               ),
//                             const SizedBox(
//                               width: 8,
//                             ),
//                           ],
//                         ),
//                       ),
//                       onChanged: (value) {
//                         filterItems(value);
//                         if (widget.onChanged != null) widget.onChanged!(value);
//                       },
//                     );
//                   }),
//             ),
//           ),
//           Transform.rotate(
//             angle: pi,
//             child: RefreshIndicator(
//               onRefresh: onRefresh,
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: theme.colorScheme.primaryContainer),
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                 ),
//                 height: boxList,
//                 child: AnimatedBuilder(
//                   animation: filteredItems,
//                   builder: (context, snapshot) {
//                     return ListView.builder(
//                       controller: _scrollController,
//                       itemCount: filteredItems.value.length,
//                       reverse: true,
//                       itemBuilder: (context, index) {
//                         final textWidget = Text(
//                           filteredItems.value[index].text,
//                           style: theme.textTheme.labelMedium?.copyWith(
//                             color: controller.text ==
//                                     filteredItems.value[index].text
//                                 ? theme.colorScheme.onPrimary
//                                 : theme.colorScheme.onSurface,
//                           ),
//                         );
//
//                         return Transform.rotate(
//                           angle: pi,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   controller.text =
//                                       filteredItems.value[index].text;
//                                   if (boxList > 0.0) {
//                                     if (!currentFocus.hasPrimaryFocus) {
//                                       currentFocus.unfocus();
//                                     }
//                                     setState(() {
//                                       boxList = 0.0;
//                                     });
//                                   }
//
//                                   onTapItem(filteredItems.value[index]);
//                                 },
//                                 child: Container(
//                                   width: double.maxFinite,
//                                   color: controller.text ==
//                                           filteredItems.value[index].text
//                                       ? theme.colorScheme.primary
//                                       : index % 2 == 0
//                                           ? customColor.surface1
//                                           : customColor.surface2,
//                                   padding: const EdgeInsets.only(
//                                       top: 13, bottom: 13, left: 10),
//                                   child: widget.preffixIconTable == null
//                                       ? textWidget
//                                       : Row(
//                                           children: [
//                                             widget.preffixIconTable!(index) ??
//                                                 const SizedBox(),
//                                             const SizedBox(
//                                               width: 8,
//                                             ),
//                                             SizedBox(
//                                               width: context.width * 0.7,
//                                               child: textWidget,
//                                             ),
//                                           ],
//                                         ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
