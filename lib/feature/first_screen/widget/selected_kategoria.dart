import 'package:flutter/material.dart';

class SelectedCategory extends StatefulWidget {
  const SelectedCategory({super.key});

  @override
  State<SelectedCategory> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<SelectedCategory> {
  int? _value = 0;
  final List<String> _category = ['Популярные блюда', 'Комбо', 'Креветки', 'Напитки'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _category.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ChoiceChip(
              selectedColor: const Color.fromARGB(255, 228, 200, 67),
              backgroundColor: Colors.black,
              side: const BorderSide(width: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              labelStyle: TextStyle(
                  color: _value == index ? Colors.black : Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              label: Text(_category[index]),
              selected: _value == index,
              showCheckmark: false,
              onSelected: (bool selected) {
                setState(
                  () {
                    _value = selected ? index : null;
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
