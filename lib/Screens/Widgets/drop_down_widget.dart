import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropDownSearchWidget extends StatelessWidget {
  final TextEditingController? controller;
  final List<String>? states;
  final String? scarchLabel;
  final String? dropdownLabel;

  const DropDownSearchWidget({
    super.key,
    this.controller,
    this.states,
    this.scarchLabel,
    this.dropdownLabel,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownSearch(
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
        } else if (key == Key("catagory")) {
          if (value != null) {
            // Extract only the category ID (numeric part at the start)
            final catId = value.replaceAll(RegExp(r'[^0-9]'), '');
            log(catId);
            controller?.text = catId;
          }
        } else if (key == Key("brand")) {
          if (value != null) {
            controller?.text = value;
          }
        } else if (key == Key("model")) {
          if (value != null) {
            controller?.text = value;
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
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
              borderSide: BorderSide(color: theme.primaryColor.withAlpha(200)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: theme.primaryColor.withAlpha(100)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: theme.primaryColor, width: 2),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
              color: isSelected ? theme.primaryColor.withAlpha(50) : null,
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
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected
                      ? theme.primaryColor
                      : theme.textTheme.bodyLarge?.color,
                ),
              ),
              leading: Icon(
                Icons.business_outlined,
                color: isSelected ? theme.primaryColor : theme.iconTheme.color,
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
            Icons.business_center_rounded,
            color: theme.primaryColor,
          ),
          suffixIcon: Container(
            padding: EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                color: theme.primaryColor.withAlpha(50),
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
            borderSide: BorderSide(color: theme.primaryColor.withAlpha(200)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: theme.primaryColor.withAlpha(100)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: theme.primaryColor, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.red),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          filled: true,
          fillColor: theme.scaffoldBackgroundColor,
        ),
      ),
      compareFn: (item1, item2) => item1 == item2,
      autoValidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
