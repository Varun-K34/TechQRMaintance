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

  const DropDownSearchWidget({
    super.key,
    this.controller,
    this.states,
    this.scarchLabel,
    this.dropdownLabel,
    this.iconprefix,
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
          }
        },
        popupProps: PopupProps.bottomSheet(
          showSearchBox: true,
          bottomSheetProps: BottomSheetProps(
            elevation: 8,
            backgroundColor: theme.cardColor,
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
              fillColor: theme.scaffoldBackgroundColor,
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
              fontWeight: FontWeight.w500,
              color: theme.primaryColor,
            ),
            hintText: "Select an $dropdownLabel",
            prefixIcon: Icon(
              iconprefix,
              color: theme.primaryColor,
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
                  color: theme.primaryColor,
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
