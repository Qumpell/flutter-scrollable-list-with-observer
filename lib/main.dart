// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'moves_column.dart';
import 'controller/number_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NumberController numberController = Get.put(NumberController());

    return Scaffold(
      appBar: AppBar(title: const Text('GetX Demo')),
      body: MovesColumn(),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Text(
      //         'You have pushed the button this many times:',
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       Obx(
      //         () => Text(
      //           '${numberController.number.value}',
      //           style: TextStyle(fontSize: 30),
      //         ),
      //       ),
      //       Obx(
      //         () => Text(
      //           'ChessBoard: ${numberController.chessBoard.value.number2}',
      //           style: TextStyle(fontSize: 30),
      //         ),
      //       ),
      //       Text(
      //         '${numberController.number.value}',
      //         style: TextStyle(fontSize: 30),
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   // onPressed: numberController.increaseNumber,
      //   onPressed: () {
      //     numberController.increaseNumber();
      //     numberController.increaseChessBoard();
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
