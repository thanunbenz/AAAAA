// ignore_for_file: avoid_print

import 'dart:io';

import 'game.dart';

void main() {
  var game = Game();
  late GuessResult guessResult;

  print('╔══════════════════════════════════════════════════');
  print('║              GUESS THE NUMBER 2/2565             ');
  print('║──────────────────────────────────────────────────');

  do {
    stdout.write('║  Guess the number between 1 and ${game.ran_dom}: ');

    var input = stdin.readLineSync();

    if (input == null) {
      //print('Error, input is NULL');
      return;
    }

    var guess = int.tryParse(input);

    if (guess == null) {
      //print('Input error, please enter numbers only');
      continue;
    }

    guessResult = game.doGuess(guess);

    if (guessResult == GuessResult.correct) {
      print('║  ➜ $guess is CORRECT ❤, total guesses: ${game.totalGuesses}');
      print('║──────────────────────────────────────────────────');
      print('║                    THE END                       ');
      print('╚══════════════════════════════════════════════════');
      while (true) {
        stdout.write('Play again? (Y/N):');
        var input1 = stdin.readLineSync();
        if (input1 == null) {
          return;
        }
        if (input1 == 'Y' || input1 == 'y') {
          guessResult = GuessResult.neww;
          game.fell();
          print('╔══════════════════════════════════════════════════');
          print('║              GUESS THE NUMBER            ');
          print('║──────────────────────────────────────────────────');
          break;
        } else if (input1 == 'N' || input1 == 'n') {
          print('Youve Played ${Game.myList.length} games');
          for (int i = 0; i < Game.myList.length; i++) {
            print('🚀 Game #${i + 1} :${Game.myList[i]} guesses');
          }
          break;
        }
      }
    } else if (guessResult == GuessResult.tooHigh) {
      print('║  ➜ $guess is TOO HIGH! ▲');
      print('║──────────────────────────────────────────────────');
    } else {
      print('║  ➜ $guess is TOO LOW! ▼');
      print('║──────────────────────────────────────────────────');
    }
  } while (guessResult != GuessResult.correct);
}