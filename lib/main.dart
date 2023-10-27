import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner:false ,
      home: Scaffold(backgroundColor:Colors.blueAccent,
        appBar: AppBar( backgroundColor: Colors.blue.shade900,
        title:const Center(child:Text('Ask me Anything')),
        ),
      body: const Center(
        child: BallWidget(),
      ),
      )
    );
  }
}

class BallWidget extends StatefulWidget {
  const BallWidget({super.key});

  @override
  State<BallWidget> createState() => _BallWidgetState();
}

class _BallWidgetState extends State<BallWidget> {
int ballNumber = 1;
void changeballNumber(){
ballNumber = Random().nextInt(5)+1;
}
  
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(onPressed:(){
            setState(() {
              changeballNumber();
            });
              },
              child: Image.asset('images/ball$ballNumber.png'),)
            ),
          ],
        ),
      );
  }
}