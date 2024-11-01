import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_svg/svg.dart';

class CardItem extends StatefulWidget {
  const CardItem({
    super.key,
    required this.cardNumber,
    required this.expiredDate,
    required this.fullName,
    required this.isCreating,
    required this.blurDegree,
    required this.backgroundImage,
    required this.backgroundImageFromStorage,
    required this.sendColor,
    required this.backgroundColor,
  });
  final double blurDegree;
  final String cardNumber;
  final String expiredDate;
  final String fullName;
  final bool isCreating;
  final Color? backgroundColor;
  final String backgroundImage;
  final File? backgroundImageFromStorage;
  final Function(Color) sendColor;
  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  Color pickerColor = const Color(0xff443a49);
  Color? currentColor = const Color(0xff443a49);
  void changeColor(Color color) {
    setState(() {
      currentColor = color;
      widget.sendColor(currentColor!);
    });
  }

  @override
  void initState() {
    currentColor = widget.backgroundColor ?? const Color(0xffffffff);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(24),
            ),
            color: currentColor,
          ),
          height: 240,
          margin: const EdgeInsets.all(16),
          child: Stack(
            children: [
              if (widget.backgroundImageFromStorage != null ||
                  widget.backgroundImage != "")
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: (widget.backgroundImageFromStorage == null)
                      ? Image.asset(
                          "assets/images/${widget.backgroundImage}",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        )
                      : Image.file(
                          widget.backgroundImageFromStorage!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: widget.blurDegree,
                    sigmaY: widget.blurDegree,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 44,
                          right: 24,
                          top: 16,
                          bottom: 12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Bank name",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "VISA",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/card_chip_icon.svg",
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/nfc_icon.svg",
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const Text(
                              "8600 3142 1202 1495",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "VALID\nTHRU",
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "09/29",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Qobil Abduraximov",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  (widget.isCreating)
                                      ? Container(
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            color: Colors.purple,
                                            shape: BoxShape.circle,
                                          ),
                                          child: IconButton(
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: const Text(
                                                        'Pick a color!'),
                                                    content:
                                                        SingleChildScrollView(
                                                      child: ColorPicker(
                                                        pickerColor:
                                                            pickerColor,
                                                        onColorChanged:
                                                            (color) {
                                                          setState(() =>
                                                              pickerColor =
                                                                  color);
                                                        },
                                                      ),
                                                    ),
                                                    actions: <Widget>[
                                                      ElevatedButton(
                                                        child:
                                                            const Text('Set'),
                                                        onPressed: () {
                                                          changeColor(
                                                              pickerColor);
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            icon: SvgPicture.asset(
                                              width: 16,
                                              height: 16,
                                              "assets/icons/color_picker.svg",
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      : const SizedBox.shrink()
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
