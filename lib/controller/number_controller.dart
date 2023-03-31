import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChessBoard {
  int number2 = 0;
}

class NumberController extends GetxController {
  RxInt number = 0.obs;
  Rx<ChessBoard> chessBoard = ChessBoard().obs;
  //final List<String> moves_list = [].obs as List<String>;
  final moveNameController = TextEditingController();

  increaseNumber() {
    number.value = number.value + 1;
  }

  increaseChessBoard() {
    chessBoard.value.number2 = chessBoard.value.number2 + 1;
    chessBoard.refresh();
  }
}
