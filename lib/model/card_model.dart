import 'dart:io';
import 'dart:ui';

class CardModel {
  final String? cardBackgroundImage;
  final File? cardBackgroundImageFromStorage;
  final Color? backgroundColor;
  final double? blurDegree;

  CardModel({
    required this.blurDegree,
    required this.cardBackgroundImage,
    required this.cardBackgroundImageFromStorage,
    required this.backgroundColor,
  });
}
