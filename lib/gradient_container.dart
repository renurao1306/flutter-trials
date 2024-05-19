import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

var startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;


class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: const [Colors.pink, Colors.white],
            ),
          ),
          child: const Center(
            child: StyledText('Hello Renu!'),
          ),
        );
  }
}