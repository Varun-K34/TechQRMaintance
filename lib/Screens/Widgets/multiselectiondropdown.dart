// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:techqrmaintance/core/colors.dart'; // Assumes you have primaryBlue defined here

// class MultiSelectDropdown<T> extends StatelessWidget {
//   final List<T> items;
//   final String label;
//   final List<T> selectedItems;
//   final Function(List<int>) onSelectionChanged;

//   const MultiSelectDropdown({
//     super.key,
//     required this.items,
//     required this.label,
//     required this.selectedItems,
//     required this.onSelectionChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: DropdownSearch<T>.multiSelection(
//         items: (filter, _) => items,
//         selectedItems: selectedItems,
//         onChanged: onChanged,
//         dropdownBuilder: (context, selectedItems) {
//           return Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   selectedItems.isEmpty ? "" : selectedItems.join(", "),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           );
//         },
//         popupProps: PopupPropsMultiSelection.bottomSheet(
//           showSearchBox: true,
//           bottomSheetProps: BottomSheetProps(
//             elevation: 8,
//             backgroundColor: primaryWhite,
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               ),
//             ),
//           ),
//           containerBuilder: (context, popupWidget) {
//             return Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//               ),
//               padding: const EdgeInsets.all(12),
//               child: popupWidget,
//             );
//           },
//           searchFieldProps: TextFieldProps(
//             decoration: InputDecoration(
//               labelText: "Search $label",
//               hintText: "Type to search...",
//               prefixIcon: Icon(Icons.search, color: theme.primaryColor),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15),
//                 borderSide: const BorderSide(color: Color(0xFFF5F4F4)),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15),
//                 borderSide: const BorderSide(color: Color(0xFFF5F4F4)),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15),
//                 borderSide:
//                     const BorderSide(color: Color(0xFFF5F4F4), width: 2),
//               ),
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//               filled: true,
//               fillColor: theme.scaffoldBackgroundColor,
//             ),
//           ),
//           itemBuilder: (context, item, isDisabled, isSelected) {
//             return Container(
//               margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//               decoration: BoxDecoration(
//                 color: isSelected ? const Color(0xFFF5F4F4) : null,
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(
//                   color: isSelected
//                       ? theme.primaryColor
//                       : theme.dividerColor.withAlpha(200),
//                   width: isSelected ? 2 : 1,
//                 ),
//               ),
//               child: ListTile(
//                 title: Text(
//                   item.toString(),
//                   style: TextStyle(
//                     fontWeight:
//                         isSelected ? FontWeight.bold : FontWeight.normal,
//                     color: isSelected
//                         ? theme.primaryColor
//                         : theme.textTheme.bodyLarge?.color,
//                   ),
//                 ),
//                 leading: Icon(
//                   Icons.business_outlined,
//                   color:
//                       isSelected ? theme.primaryColor : theme.iconTheme.color,
//                 ),
//                 trailing: isSelected
//                     ? Icon(Icons.check_circle, color: theme.primaryColor)
//                     : null,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             );
//           },
//         ),
//         decoratorProps: DropDownDecoratorProps(
//           decoration: InputDecoration(
//             labelText: label,
//             labelStyle: TextStyle(
//               fontWeight: FontWeight.w500,
//               color: primaryBlue,
//             ),
//             hintText: "Select $label",
//             prefixIcon: Icon(Icons.business_outlined, color: primaryBlue),
//             suffixIcon: Container(
//               padding: const EdgeInsets.all(8),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Color(0xFFF5F4F4),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(
//                   Icons.keyboard_arrow_down_rounded,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//               borderSide: BorderSide(color: primaryBlue),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//               borderSide: BorderSide(color: primaryBlue),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//               borderSide: BorderSide(color: primaryBlue, width: 2),
//             ),
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//             filled: true,
//             fillColor: const Color(0xFFF5F4F4),
//           ),
//         ),
//       ),
//     );
//   }

//   void onChanged(List<T> value) {
//     List<int> selectedNumbers = [];

//     for (var element in value) {
//       String itemString = element.toString();

//       // Extract the integer part from the beginning of the string
//       RegExp regex = RegExp(r'^\d+');
//       Match? match = regex.firstMatch(itemString);

//       if (match != null) {
//         int number = int.parse(match.group(0)!);
//         selectedNumbers.add(number);
//       }
//     }

//     log("Selected numbers: $selectedNumbers");
//     onSelectionChanged(selectedNumbers);
//   }
// }

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:techqrmaintance/core/colors.dart';

class MultiSelectDropdown<T> extends StatelessWidget {
  // Core properties
  final List<T> items;
  final String label;
  final List<T> selectedItems;
  final Function(List<String>) onSelectionChanged;

  // Constructor
  const MultiSelectDropdown({
    super.key,
    required this.items,
    required this.label,
    required this.selectedItems,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DropdownSearch<T>.multiSelection(
        items: (filter, _) => items,
        selectedItems: selectedItems,
        onChanged: onChanged,

        // Selected items display builder
        dropdownBuilder: (context, selectedItems) {
          return Row(
            children: [
              Expanded(
                child: Text(
                  selectedItems.isEmpty ? "" : selectedItems.join(", "),
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          );
        },

        // Popup configuration
        popupProps: PopupPropsMultiSelection.bottomSheet(
          showSearchBox: true,

          // Bottom sheet styling
          bottomSheetProps: BottomSheetProps(
            elevation: 10,
            backgroundColor: primaryWhite,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
          ),

          // Container wrapper
          containerBuilder: (context, popupWidget) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: popupWidget,
            );
          },

          // Search field styling
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              labelText: "Search $label",
              hintText: "Type to search...",
              prefixIcon: Icon(Icons.search, color: theme.primaryColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Color(0xFFF5F4F4)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Color(0xFFF5F4F4)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: theme.primaryColor, width: 2),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              filled: true,
              fillColor: theme.scaffoldBackgroundColor,
            ),
          ),

          // Item styling in dropdown
          itemBuilder: (context, item, isDisabled, isSelected) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFFF5F4F4) : null,
                borderRadius: BorderRadius.circular(14),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: theme.primaryColor.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        )
                      ]
                    : null,
                border: Border.all(
                  color: isSelected
                      ? theme.primaryColor
                      : theme.dividerColor.withAlpha(150),
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: ListTile(
                title: Text(
                  item.toString(),
                  style: TextStyle(
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    fontSize: 15,
                    color: isSelected
                        ? theme.primaryColor
                        : theme.textTheme.bodyLarge?.color,
                  ),
                ),
                leading: Icon(
                  Icons.business_outlined,
                  color:
                      isSelected ? theme.primaryColor : theme.iconTheme.color,
                  size: 22,
                ),
                trailing: isSelected
                    ? Icon(
                        Icons.check_circle,
                        color: theme.primaryColor,
                        size: 22,
                      )
                    : null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            );
          },
        ),

        // Main input field styling
        decoratorProps: DropDownDecoratorProps(
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: primaryBlue,
              fontSize: 16,
            ),
            hintText: "Select $label",
            hintStyle: TextStyle(
              fontSize: 15,
              color: primaryBlue,
            ),
            prefixIcon: Icon(
              Icons.business_outlined,
              color: primaryBlue,
            
              size: 22,
            ),
            suffixIcon: Container(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F4F4),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: primaryBlue,
                  size: 22,
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: primaryBlue),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: primaryBlue),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: primaryBlue, width: 2),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            filled: true,
            fillColor: const Color(0xFFF5F4F4),
          ),
        ),
      ),
    );
  }

  void onChanged(List<T> value) {
    List<String> selectedNumbers = [];

    for (var element in value) {
      String itemString = element.toString();

      // Extract the integer part from the beginning of the string
      RegExp regex = RegExp(r'^\d+');
      Match? match = regex.firstMatch(itemString);

      if (match != null) {
        int number = int.parse(match.group(0)!);
        selectedNumbers.add(number.toString());
      }
    }

    log("Selected numbers: $selectedNumbers");
    onSelectionChanged(selectedNumbers);
  }
}
