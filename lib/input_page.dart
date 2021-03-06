import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
            child: Row(
          children: const [
            Expanded(
              child: MyContainer(),
            ),
            Expanded(
              child: MyContainer(),
            ),
          ],
        )),
        const Expanded(
          child: MyContainer(),
        ),
        const Expanded(
          child: MyContainer(),
        ),
        Expanded(
            child: Row(
          children: const [
            Expanded(
              child: MyContainer(),
            ),
            Expanded(
              child: MyContainer(),
            ),
          ],
        )),
      ]),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  const MyContainer({this.renk = Colors.white, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: renk,
      ),
    );
  }
}
