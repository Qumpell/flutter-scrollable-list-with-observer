import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/move_controller.dart';

class MovesColumn extends StatelessWidget {
  MovesColumn({super.key});
  final TextEditingController _textController = TextEditingController();
  final MoveController moveController = Get.put(MoveController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
            color: Colors.amber,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text(
                            "WHITE",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Obx(
                              () => ListView.builder(
                                itemCount: moveController.movesList.length,
                                itemBuilder: (context, index) {
                                  return index % 2 == 0
                                      ? ListTile(
                                          title: Center(child: Text(moveController.movesList[index])),
                                        )
                                      : const SizedBox.shrink();
                                },
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                const VerticalDivider(
                  color: Colors.blue,
                  thickness: 1.5,
                  width: 1.5,
                ),
                Expanded(
                  child: Container(
                      color: const Color.fromARGB(255, 49, 47, 47),
                      child: Column(
                        children: [
                          const Text(
                            "BLACK",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Obx(
                              () => ListView.builder(
                                itemCount: moveController.movesList.length,
                                itemBuilder: (context, index) {
                                  return index % 2 != 0
                                      ? ListTile(
                                          title: Center(
                                              child: Text(
                                            moveController.movesList[index],
                                            style: const TextStyle(color: Colors.white),
                                          )),
                                        )
                                      : const SizedBox.shrink();
                                },
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 35, 113, 238),
                  height: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Obx(
                                () => TextField(
                                  controller: _textController,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    labelStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder:
                                        const OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.blue)),
                                    labelText: moveController.counter.value % 2 == 0 ? 'White move' : 'Black move',
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                _textController.text.isNotEmpty
                                    ? moveController.addToMoveList(_textController.text)
                                    : null;
                                _textController.clear();
                              },
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                              ),
                              child: const Text("Submit"),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ],
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
