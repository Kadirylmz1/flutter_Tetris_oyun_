import 'dart:developer';
import 'package:flutter_tetris_oyunu/values.dart';
import 'package:flutter/material.dart';

import 'values.dart';

class Piece {
  Tetromino type;
  List<int> position = [];
  int rotationState = 0;

  Color get color {
    return tetrominoColors[type] ?? const Color(0xFFFFFFFF);
  }

  Piece({required this.type});

  void initializePiece() {
    switch (type) {
      case Tetromino.L:
        position = [
          -26,
          -16,
          -6,
          -5,
        ];
        break;
      case Tetromino.J:
        position = [
          -25,
          -15,
          -5,
          -6,
        ];
        break;
      case Tetromino.I:
        position = [
          -4,
          -5,
          -6,
          -7,
        ];
        break;
      case Tetromino.O:
        position = [
          -15,
          -16,
          -5,
          -6,
        ];
        break;
      case Tetromino.S:
        position = [
          -15,
          -14,
          -6,
          -5,
        ];
        break;
      case Tetromino.Z:
        position = [
          -17,
          -16,
          -6,
          -5,
        ];
        break;
      case Tetromino.T:
        position = [
          -26,
          -16,
          -6,
          -15,
        ];
        break;
    }
  }

  void movePiece(Direction direction) {
    switch (direction) {
      case Direction.dow:
        for (int i = 0; i < position.length; i++) {
          position[i] += rowLength;
        }
        break;
      case Direction.left:
        for (int i = 0; i < position.length; i++) {
          position[i] -= 1;
        }
        break;
      case Direction.right:
        for (int i = 0; i < position.length; i++) {
          position[i] += 1;
        }
        break;
    }
  }

  void rotatePiece() {
    List<int> newPosition = [];

    switch (type) {
      case Tetromino.L:
        switch (rotationState) {
          case 0:
            newPosition = [
              position[1] - rowLength,
              position[1],
              position[1] + rowLength,
              position[1] + rowLength + 1,
            ];
            position = newPosition;
            rotationState = (rotationState + 1) % 4;
            break;
          case 1:
            newPosition = [
              position[1] + 1,
              position[1],
              position[1] - 1,
              position[1] - rowLength - 1,
            ];
            position = newPosition;
            rotationState = (rotationState + 1) % 4;
            break;
          case 2:
            newPosition = [
              position[1] + rowLength,
              position[1],
              position[1] - rowLength,
              position[1] - rowLength - 1,
            ];
            position = newPosition;
            rotationState = (rotationState + 1) % 4;
            break;
          case 3:
            newPosition = [
              position[1] - 1,
              position[1],
              position[1] + 1,
              position[1] + rowLength + 1,
            ];
            position = newPosition;
            rotationState = (rotationState + 1) % 4;
            break;
        }
        break;
    }
  }
}
