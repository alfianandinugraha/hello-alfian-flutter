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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("alfianandi.jpg")
                )
              ),
            ),
            Text(
              "Hello world !",
              style: TextStyle(
                fontFamily: 'ZenKakuGothicAntique',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.blue[500]
              ),
            ),
            const Text(
              "Alfian Andi Nugraha",
              style: TextStyle(
                fontFamily: 'ZenKakuGothicAntique',
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
            ),
            const NormalText("Front-end Web Developer"),
          ]
        )
      )
    );
  }
}
