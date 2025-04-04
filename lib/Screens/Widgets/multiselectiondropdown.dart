import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class MultiSelectDropdown<T> extends StatelessWidget {
  final List<T> items;
  final String label;
  final List<T> selectedItems;
  final Function(List<int>) onSelectionChanged;

  const MultiSelectDropdown({
    super.key,
    required this.items,
    required this.label,
    required this.selectedItems,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>.multiSelection(
      items: (filter, loadProps) => items,
      selectedItems: selectedItems,
      dropdownBuilder: (context, selectedItems) {
        return Row(
          children: [
            Icon(Icons.list),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                selectedItems.isEmpty
                    ? "Select $label"
                    : selectedItems.join(", "),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        );
      },
      onChanged: onChanged,
      popupProps: PopupPropsMultiSelection.menu(
        showSearchBox: true,
        showSelectedItems: true,
        itemBuilder: (context, item, isDisabled, isSelected) => ListTile(
          title: Text(item.toString()),
        ),
      ),
    );
  }

  void onChanged(List<T> value) {
    List<int> selectedNumbers = [];

    for (var element in value) {
      String itemString = element.toString();

      // Extract the integer part from the beginning of the string
      RegExp regex = RegExp(r'^\d+');
      Match? match = regex.firstMatch(itemString);

      if (match != null) {
        int number = int.parse(match.group(0)!);
        selectedNumbers.add(number);
      }
    }

    log("Selected numbers: $selectedNumbers");
    onSelectionChanged(selectedNumbers);
  }

}
