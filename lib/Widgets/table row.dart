import 'package:flutter/material.dart';

TableRow tableRow({
  required String image,
}) {
  ValueNotifier<int> _counter = ValueNotifier(0);

  void incrimentButton() {
    _counter.value = _counter.value + 1;
  }

  void decrementButton() {
    _counter.value = _counter.value - 1;
  }

  return TableRow(children: [
    Center(
      child: Container(
        height: 85,
        width: 163,
        child: Expanded(
          child: Row(children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(child: Text("Product name"))
          ]),
        ),
      ),
    ),
    Center(child: Text("₹99")),
    Center(
      child: Row(
        children: [
          SizedBox(
            width: 6,
          ),
          GestureDetector(
            onTap: () {
              incrimentButton();
            },
            child: Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFFF6F61),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6))),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            height: 30,
            width: 40,
            color: Color(0xFF353535),
            child: Center(
                child: ValueListenableBuilder(
              valueListenable: _counter,
              builder: (BuildContext context, int newValue, child) {
                return Text(
                  newValue >= 0 ? '$newValue' : "0",
                  style: TextStyle(color: Colors.white),
                );
              },
            )),
          ),
          GestureDetector(
            onTap: () {
              decrementButton();
            },
            child: Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFFF6F61),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6))),
              child: Center(
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    Center(child: Text("₹99")),
    Container(
      height: 30,
      width: 40,
      child: Center(
        child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Color(0xFFFF6F61),
                borderRadius: BorderRadius.circular(2)),
            child: Center(
                child: Icon(
              Icons.delete,
              color: Colors.white,
            ))),
      ),
    )
  ]);
}
