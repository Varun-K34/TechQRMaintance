import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class DropDownSearchWidget extends StatelessWidget {
  final TextEditingController? controller;
  final List<String>? states;
  final String? scarchLabel;
  final String? dropdownLabel;
  final IconData? iconprefix;
  final bool? serarchbox;

  const DropDownSearchWidget({
    super.key,
    this.controller,
    this.states,
    this.scarchLabel,
    this.dropdownLabel,
    this.iconprefix,
    this.serarchbox = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DropdownSearch(
        clickProps: ClickProps(
          mouseCursor: MouseCursor.defer,
        ),
        items: (filter, loadProps) {
          return states ?? [];
        },
        onChanged: (value) {
          if (Key("org") == key) {
            if (value != null) {
              final orgId = value.split(")")[0].split("(")[1];
              controller?.text = orgId;
            }
          } else if (key == Key("category")) {
            if (value != null) {
              // Extract only the category ID (numeric part at the start)
              final catId = value.replaceAll(RegExp(r'[^0-9]'), '');
              log(catId);
              controller?.text = catId;
            }
          } else if (key == Key("brand")) {
            if (value != null) {
              //log(value);
              // Extract the first number (Brand ID)
              final brandId = RegExp(r'^\d+').firstMatch(value)?.group(0) ?? '';
              log(brandId);
              controller?.text = brandId;
            }
          } else if (key == Key("model")) {
            if (value != null) {
              final modelId = RegExp(r'^\d+').firstMatch(value)?.group(0) ?? '';
              log(modelId);
              controller?.text = modelId;
            }
          } else if (key == Key("status")) {
            if (value != null) {
              controller?.text = value;
            }
          } else if (key == Key("tech")) {
            if (value != null) {
              final techid = RegExp(r'^\d+').firstMatch(value)?.group(0) ?? '';
              log(techid);
              controller?.text = techid;
            }
          } else if (key == Key("area")) {
            if (value != null) {
              final areaid = RegExp(r'^\d+').firstMatch(value)?.group(0) ?? '';
              log(areaid);
              controller?.text = areaid;
            }
          }
        },
        popupProps: PopupProps.bottomSheet(
          showSearchBox: serarchbox!,
          bottomSheetProps: BottomSheetProps(
            elevation: 8,
            backgroundColor: primaryWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          containerBuilder: (context, popupWidget) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: popupWidget,
              ),
            );
          },
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              labelText: scarchLabel,
              hintText: "Type to search...",
              prefixIcon: Icon(Icons.search, color: theme.primaryColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: const Color(0xFFF5F4F4)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: const Color(0xFFF5F4F4)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                    BorderSide(color: const Color(0xFFF5F4F4), width: 2),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              filled: true,
              fillColor: primaryWhite,
            ),
          ),
          listViewProps: ListViewProps(
            padding: EdgeInsets.symmetric(vertical: 8),
            physics: BouncingScrollPhysics(),
            itemExtent: 60, // Fixed height for each item for better performance
          ),
          scrollbarProps: ScrollbarProps(
            thickness: 6,
            radius: Radius.circular(10),
            interactive: true,
          ),
          itemBuilder: (context, item, isSelected, onItemSelect) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFFF5F4F4) : null,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected
                      ? theme.primaryColor
                      : theme.dividerColor.withAlpha(200),
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: ListTile(
                title: Text(
                  item.toString(),
                  style: TextStyle(
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected
                        ? theme.primaryColor
                        : theme.textTheme.bodyLarge?.color,
                  ),
                ),
                leading: Icon(
                  Icons.business_outlined,
                  color:
                      isSelected ? theme.primaryColor : theme.iconTheme.color,
                ),
                trailing: isSelected
                    ? Icon(Icons.check_circle, color: theme.primaryColor)
                    : null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            );
          },
        ),
        decoratorProps: DropDownDecoratorProps(
          decoration: InputDecoration(
            labelText: dropdownLabel,
            labelStyle: TextStyle(
              color: primaryBlue,
            ),
            hintText: "Select an $dropdownLabel",
            prefixIcon: Icon(
              iconprefix,
              color: primaryBlue,
            ),
            suffixIcon: Container(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F4F4),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: primaryBlack,
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: primaryBlue),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: primaryBlue),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: primaryBlue, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.red),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            filled: true,
            fillColor: const Color(0xFFF5F4F4),
          ),
        ),
        compareFn: (item1, item2) => item1 == item2,
        autoValidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}

// import 'dart:developer';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:techqrmaintance/core/colors.dart';

// class DropDownSearchWidget extends StatelessWidget {
//   // Properties
//   final TextEditingController? controller;
//   final List<String>? states;
//   final String? scarchLabel;
//   final String? dropdownLabel;
//   final IconData? iconprefix;
//   final bool? serarchbox;

//   // Constructor
//   const DropDownSearchWidget({
//     super.key,
//     this.controller,
//     this.states,
//     this.scarchLabel,
//     this.dropdownLabel,
//     this.iconprefix,
//     this.serarchbox = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: DropdownSearch(
//         // Click properties
//         clickProps: const ClickProps(
//           mouseCursor: MouseCursor.defer,
//         ),

//         // Data source
//         items: (filter, loadProps) {
//           return states ?? [];
//         },

//         // Value change handler
//         onChanged: (value) {
//           if (value == null) return;

//           if (key == const Key("org")) {
//             final orgId = value.split(")")[0].split("(")[1];
//             controller?.text = orgId;
//           } else if (key == const Key("category")) {
//             // Extract only the category ID (numeric part at the start)
//             final catId = value.replaceAll(RegExp(r'[^0-9]'), '');
//             log(catId);
//             controller?.text = catId;
//           } else if (key == const Key("brand")) {
//             // Extract the first number (Brand ID)
//             final brandId = RegExp(r'^\d+').firstMatch(value)?.group(0) ?? '';
//             log(brandId);
//             controller?.text = brandId;
//           } else if (key == const Key("model")) {
//             final modelId = RegExp(r'^\d+').firstMatch(value)?.group(0) ?? '';
//             log(modelId);
//             controller?.text = modelId;
//           } else if (key == const Key("status")) {
//             controller?.text = value;
//           } else if (key == const Key("tech")) {
//             final techid = RegExp(r'^\d+').firstMatch(value)?.group(0) ?? '';
//             log(techid);
//             controller?.text = techid;
//           } else if (key == const Key("area")) {
//             final areaid = RegExp(r'^\d+').firstMatch(value)?.group(0) ?? '';
//             log(areaid);
//             controller?.text = areaid;
//           }
//         },

//         // Popup styling and behavior
//         popupProps: PopupProps.bottomSheet(
//           showSearchBox: serarchbox!,

//           // Bottom sheet styling
//           bottomSheetProps: const BottomSheetProps(
//             elevation: 10,
//             backgroundColor: primaryWhite,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(24),
//                 topRight: Radius.circular(24),
//               ),
//             ),
//           ),

//           // Container styling
//           containerBuilder: (context, popupWidget) {
//             return Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(24),
//                   topRight: Radius.circular(24),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0x0F000000),
//                     blurRadius: 6,
//                     offset: Offset(0, -2),
//                   )
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: popupWidget,
//               ),
//             );
//           },

//           // Search field styling
//           searchFieldProps: TextFieldProps(
//             decoration: InputDecoration(
//               labelText: scarchLabel,
//               hintText: "Type to search...",
//               prefixIcon: Icon(
//                 Icons.search,
//                 color: theme.primaryColor,
//                 size: 20,
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16),
//                 borderSide: const BorderSide(color: Color(0xFFF5F4F4)),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16),
//                 borderSide: const BorderSide(color: Color(0xFFF5F4F4)),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16),
//                 borderSide: BorderSide(color: theme.primaryColor, width: 2),
//               ),
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//               filled: true,
//               fillColor: primaryWhite,
//             ),
//           ),

//           // List view configuration
//           listViewProps: const ListViewProps(
//             padding: EdgeInsets.symmetric(vertical: 8),
//             physics: BouncingScrollPhysics(),
//             itemExtent: 64, // Fixed height for each item for better performance
//           ),

//           // Scrollbar styling
//           scrollbarProps: const ScrollbarProps(
//             thickness: 6,
//             radius: Radius.circular(10),
//             interactive: true,
//           ),

//           // Item builder
//           itemBuilder: (context, item, isSelected, onItemSelect) {
//             return Container(
//               margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//               decoration: BoxDecoration(
//                 color: isSelected ? const Color(0xFFF5F4F4) : Colors.white,
//                 borderRadius: BorderRadius.circular(14),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.05),
//                     blurRadius: 4,
//                     offset: const Offset(0, 2),
//                   ),
//                 ],
//                 border: Border.all(
//                   color: isSelected
//                       ? theme.primaryColor
//                       : theme.dividerColor.withAlpha(150),
//                   width: isSelected ? 2 : 1,
//                 ),
//               ),
//               child: ListTile(
//                 title: Text(
//                   item.toString(),
//                   style: TextStyle(
//                     fontWeight:
//                         isSelected ? FontWeight.bold : FontWeight.normal,
//                     fontSize: 15,
//                     color: isSelected
//                         ? theme.primaryColor
//                         : theme.textTheme.bodyLarge?.color,
//                   ),
//                 ),
//                 leading: Icon(
//                   Icons.business_outlined,
//                   size: 22,
//                   color:
//                       isSelected ? theme.primaryColor : theme.iconTheme.color,
//                 ),
//                 trailing: isSelected
//                     ? Icon(
//                         Icons.check_circle,
//                         color: theme.primaryColor,
//                         size: 22,
//                       )
//                     : null,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//               ),
//             );
//           },
//         ),

//         // Main dropdown field styling
//         decoratorProps: DropDownDecoratorProps(
//           decoration: InputDecoration(
//             labelText: dropdownLabel,
//             labelStyle: const TextStyle(
//               color: primaryBlack,
//               fontWeight: FontWeight.w500,
//               fontSize: 16,
//             ),
//             hintText: "Select ${dropdownLabel ?? ''}",
//             hintStyle: TextStyle(
//               color: primaryBlack.withOpacity(0.6),
//               fontSize: 15,
//             ),
//             prefixIcon: Icon(
//               iconprefix,
//               color: primaryBlack,
//               size: 22,
//             ),
//             suffixIcon: Container(
//               padding: const EdgeInsets.all(8),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFF5F4F4),
//                   shape: BoxShape.circle,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.05),
//                       blurRadius: 2,
//                       offset: const Offset(0, 1),
//                     ),
//                   ],
//                 ),
//                 child: const Icon(
//                   Icons.keyboard_arrow_down_rounded,
//                   color: primaryBlack,
//                   size: 22,
//                 ),
//               ),
//             ),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(16),
//               borderSide: const BorderSide(color: primaryBlue),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(16),
//               borderSide: const BorderSide(color: primaryBlue),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(16),
//               borderSide: const BorderSide(color: primaryBlue, width: 2),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(16),
//               borderSide: const BorderSide(color: Colors.red),
//             ),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//             filled: true,
//             fillColor: const Color(0xFFF5F4F4),
//           ),
//         ),

//         compareFn: (item1, item2) => item1 == item2,
//         autoValidateMode: AutovalidateMode.onUserInteraction,
//       ),
//     );
//   }
// }
