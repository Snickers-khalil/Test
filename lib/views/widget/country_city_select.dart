// views/widgets/country_city_select.dart

import 'package:flutter/material.dart';
import '../../data/model/city.dart';
import '../../data/model/country.dart';

class CountryCitySelect extends StatelessWidget {
  final String title;
  final List<dynamic> items;
  final Function(dynamic)? onSelected;

  const CountryCitySelect({Key? key,
    required this.title,
    required this.items,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        DropdownButton<dynamic>(
          isExpanded: true,
          items: items.map<DropdownMenuItem>((dynamic item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item is Country ? item.name : (item as City).name),
            );
          }).toList(),
          onChanged: (value) {
            if (onSelected != null) onSelected!(value);
          },
        ),
      ],
    );
  }
}
