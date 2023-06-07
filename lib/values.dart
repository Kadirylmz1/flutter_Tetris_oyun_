import 'package:flutter/material.dart';

int rowLength = 10;
int colLength = 10;

enum Direction {
  left,
  right,
  dow,
}

enum Tetromino {
  L,
  J,
  I,
  O,
  S,
  Z,
  T,
}

const Map<Tetromino, Color> tetrominoColors = {
  Tetromino.L: Color(0XFFFFA500),
  Tetromino.J: Color.fromARGB(255, 0, 182, 255),
  Tetromino.I: Color.fromARGB(235, 242, 8, 255),
  Tetromino.O: Color(0xFFFFFF00),
  Tetromino.S: Color(0XFF008000),
  Tetromino.Z: Color(0XFFFF0000),
  Tetromino.T: Color.fromARGB(255, 144, 0, 255),
};
