import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MovesColumn extends StatelessWidget {
  MovesColumn({super.key});
  final List<int> number_list = new List<int>.generate(5, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: number_list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(number_list[index].toString()),
                    );
                  },
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[],
          ),
          Column(
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}
