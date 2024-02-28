import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.numb, required this.col});

final String numb;
final int col;

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: const EdgeInsets.all(8),
            height: 50,
            color: Colors.blue[col],
            child: Center(
              child: Text(' Элемент № $numb', style: const TextStyle(
                color: Colors.white,
                fontSize: 30
              ),
              )
            ),
          );
  }
}