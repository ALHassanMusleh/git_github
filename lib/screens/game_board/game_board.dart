import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/game_board/xo_button.dart';

class GameBoard extends StatefulWidget {
  static const String routeName = 'GameBoard';

  GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  final TextStyle playerTextStyle =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<String> board = ["", "", "", "", "", "", "", "", ""];
  int counter = 0;
  int player1Score = 0;
  int player2Score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XO Game'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Player 1 : $player1Score',
                  style: playerTextStyle,
                ),
                Text(
                  'Player 2 : $player2Score',
                  style: playerTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(
                  symbol: board[0],
                  onClick: onPlayerTurn,
                  index: 0,
                ),
                XOButton(
                  symbol: board[1],
                  onClick: onPlayerTurn,
                  index: 1,
                ),
                XOButton(
                  symbol: board[2],
                  onClick: onPlayerTurn,
                  index: 2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(
                  symbol: board[3],
                  onClick: onPlayerTurn,
                  index: 3,
                ),
                XOButton(
                  symbol: board[4],
                  onClick: onPlayerTurn,
                  index: 4,
                ),
                XOButton(
                  symbol: board[5],
                  onClick: onPlayerTurn,
                  index: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(
                  symbol: board[6],
                  onClick: onPlayerTurn,
                  index: 6,
                ),
                XOButton(
                  symbol: board[7],
                  onClick: onPlayerTurn,
                  index: 7,
                ),
                XOButton(
                  symbol: board[8],
                  onClick: onPlayerTurn,
                  index: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onPlayerTurn(int index) {
    if (board[index].isNotEmpty) return;
    String symbol = counter % 2 == 0 ? "o" : "x";
    board[index] = symbol;
    if (checkWinner()) {
      if (symbol == "o") {
        player1Score++;
      } else {
        player2Score++;
      }
    }
    counter++;
    setState(() {});
  }

  bool checkWinner() {
    /// Row
    if (board[0].isNotEmpty && board[0] == board[1] && board[1] == board[2]) {
      return true;
    }
    if (board[3].isNotEmpty && board[3] == board[4] && board[4] == board[5]) {
      return true;
    }
    if (board[6].isNotEmpty && board[6] == board[7] && board[7] == board[8]) {
      return true;
    }

    /// Column
    if (board[0].isNotEmpty && board[0] == board[3] && board[3] == board[6]) {
      return true;
    }
    if (board[1].isNotEmpty && board[1] == board[4] && board[4] == board[7]) {
      return true;
    }
    if (board[2].isNotEmpty && board[2] == board[5] && board[5] == board[8]) {
      return true;
    }

    /// Diagonal0
    if (board[0].isNotEmpty && board[0] == board[4] && board[4] == board[8]) {
      return true;
    }
    if (board[2].isNotEmpty && board[2] == board[4] && board[4] == board[6]) {
      return true;
    }

    return false;
  }

  void clearBoard() {}

  /// 0 1 2
  /// 3 4 5
  /// 6 7 8
}
