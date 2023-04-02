import 'package:get/get.dart';

class MoveController extends GetxController {
  RxInt counter = 0.obs;
  final RxList<String> movesList = <String>[].obs;

  addToMoveList(String text) {
    movesList.add(text);
    _increaseCounter();
    movesList.refresh();
  }

  _increaseCounter() {
    counter.value = counter.value + 1;
  }
}
