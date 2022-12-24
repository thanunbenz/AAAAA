// ignore_for_file: avoid_print

import 'dart:math';
import 'dart:mirrors';

// enumeration
enum GuessResult {
  correct, tooHigh, tooLow, neww
}

class Game {
  int ran_dom = Random().nextInt(100) + 1;
  late int answer = Random().nextInt(ran_dom)+1;
  int _totalGuesses = 0;
  static List<int> myList = [];


  // constructor
  void fell(){
    ran_dom = Random().nextInt(100) + 1;
    answer = Random().nextInt(ran_dom) + 1;
    _totalGuesses=0;
    print('Enter a maximum number to random :$ran_dom');
  }
  Game() {
    print('Enter a maximum number to random :$ran_dom');
  }

  GuessResult doGuess(int guess) {
    _totalGuesses++;

    if (guess == answer) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }

  // getter
  int get totalGuesses {
    myList.add(_totalGuesses);
    return _totalGuesses;
  }
}