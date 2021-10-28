import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

TextStyle normalTextStyle = const TextStyle(
  fontFamily: 'ZenKakuGothicAntique',
  fontWeight: FontWeight.w400
);

class NormalText extends StatelessWidget {
  final String data;

  const NormalText(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data, style: normalTextStyle);
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: NormalText("Hello world !")
      )
    );
  }
}
