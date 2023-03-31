import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovesColumn extends StatelessWidget {
  MovesColumn({super.key});
  List<int> number_list = new List<int>.generate(5, (index) => index + 1);
  List<int> number_list1 = new List<int>.generate(5, (index) => index + 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: number_list.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(number_list[index].toString()),
                          );
                        },
                      ),
                    ),
                    //child: Text("TEST"),
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.black,
              thickness: 1.5,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Expanded(
                    //child: Text("TEST")
                    child: SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: number_list1.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(number_list1[index].toString()),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[(Text("TEST"))],
        )
      ],
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
