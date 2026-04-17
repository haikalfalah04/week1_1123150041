import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Fruit Catcher Game',
home:  GameScreen(),
);
}
}

class GameScreen extends StatefulWidget {
const GameScreen({super.key});
@override
State<GameScreen> createState() => _GameScreenState();
}
class _GameScreenState extends State<GameScreen> {

@override
final ValueNotifier<int> counter = ValueNotifier(1);

void initState() {
super.initState();
}

@override
Widget build(BuildContext context) {
return Scaffold(
body: Stack(
children: [
Positioned(
top: 50,
left: 20,
child: ValueListenableBuilder<int>(
valueListenable: counter,
builder: (context, score, child) {
return Text(
'Score: $score',
style: const TextStyle(
color: Colors.white,
fontSize: 24,
fontWeight: FontWeight.bold,
),
);
},
),
), // Positioned
],
),
);
}
}




