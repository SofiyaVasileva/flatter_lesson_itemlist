import 'package:flutter/material.dart';
import 'package:vasilueva_list/components/item_list.dart';

final List<String> number = <String>["I", "II", "III", "IV","V","VI","VII","VIII","IX","X","XI","XII","XIII","XIV","XV"];
final List<int> color = <int>[100, 200, 300, 400, 500, 600, 700, 800, 900, 800, 700, 600, 500, 400, 300];

class ListTest extends StatelessWidget {
  const ListTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: number.length,
        itemBuilder: (BuildContext context, int index){
          return  ItemList(numb: number[index], col: color[index],);
        }
        )
    );
  }
}