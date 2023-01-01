// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:worldcup_quiz/flipcard_model.dart';
import 'package:worldcup_quiz/flipcard_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Flipcard> _flipcardobject = [
    Flipcard(question: 'which team won fifa 2022', answer: 'argentina'),
    Flipcard(question: 'Who won golden ball', answer: 'Leonel Messi'),
    Flipcard(question: 'Who won golden Hand', answer: 'E mactroxz'),
    Flipcard(
        question: 'How many times did Argentina won world cup',
        answer: '3 times'),
    Flipcard(
        question: 'Sponsord country make world cup', answer: 'Quatar 2022'),
    Flipcard(question: 'Who is the runner\'s up team?', answer: 'France'),
    Flipcard(question: 'who is the boss', answer: 'yo boi this is Rambooo'),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('World Quix'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  front: FlipCardView(
                      fliptext: _flipcardobject[_currentIndex].question),
                  back: FlipCardView(
                      fliptext: _flipcardobject[_currentIndex].answer),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: _showPreviousCard,
                    child: Text('previous'),
                  ),
                  OutlinedButton(
                    onPressed: _showNextCard,
                    child: Text('next'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showNextCard() {
    setState(() {
      _currentIndex =
          (_currentIndex + 1 < _flipcardobject.length) ? _currentIndex + 1 : 0;
    });
  }

  void _showPreviousCard() {
    setState(() {
      _currentIndex = (_currentIndex - 1 >= 0)
          ? _currentIndex - 1
          : _flipcardobject.length - 1;
    });
  }
}
