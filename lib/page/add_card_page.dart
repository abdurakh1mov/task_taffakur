import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:task_taffakur/bloc/home_bloc.dart';
import 'package:task_taffakur/component/card_item.dart';
import 'package:task_taffakur/helper/image_helper.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;
  var pickedColor = const Color(0xffffffff);
  var sliderValue = 0.0;
  final _imageHelper = ImageHelper();
  List<String> imageList = [];
  var selectedBackgroundImage = "";

  @override
  void initState() {
    for (int i = 0; i < 5; i++) {
      imageList.add("prd_$i.png");
    }
    imageList.add("");
    Random random = Random();
    selectedBackgroundImage = imageList[random.nextInt(5)];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add new card"),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Column(
              children: [
                CardItem(
                  backgroundColor: pickedColor,
                  sendColor: (color) {
                    setState(() {
                      pickedColor = color;
                      selectedBackgroundImage = "";
                      _imageFile = null;
                    });
                  },
                  blurDegree: sliderValue,
                  backgroundImage: selectedBackgroundImage,
                  backgroundImageFromStorage: _imageFile,
                  cardNumber: "8600 1902 1590 0185",
                  isCreating: true,
                  fullName: "Qobil Abduraximov",
                  expiredDate: "09/26",
                ),
                Slider(
                  activeColor: Colors.blue,
                  value: sliderValue,
                  label: sliderValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                  divisions: 100,
                  max: 100,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return (index != 5)
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  _imageFile = null;
                                  selectedBackgroundImage = imageList[index];
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 16,
                                  left: (index == 0) ? 16 : 4,
                                  right: (index == 5) ? 16 : 4,
                                ),
                                height: 60,
                                width: 100,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          "assets/images/${imageList[index]}",
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                          height: double.infinity,
                                        )),
                                    if (imageList[index] ==
                                        selectedBackgroundImage)
                                      Positioned(
                                        right: 5,
                                        top: 5,
                                        child: Container(
                                          height: 24,
                                          width: 24,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                          ),
                                          child: const Icon(
                                            Icons.done,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _pickImage();
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(
                                  top: 16,
                                  left: (index == 0) ? 16 : 4,
                                  right: (index == 5) ? 16 : 4,
                                ),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            );
                    },
                  ),
                ),
                const Expanded(
                  child: SizedBox.shrink(),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 40),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(
                            HomeEvent.setData(
                              blurDegree: sliderValue,
                              cardBackgroundImage: selectedBackgroundImage,
                              cardBackgroundImageFromStorage: _imageFile,
                              backgroundColor: pickedColor,
                            ),
                          );
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    try {
      if (pickedFile != null) {
        final file = XFile(pickedFile.path);
        final croppedFile = await _imageHelper.crop(
          file: file,
          cropStyle: CropStyle.rectangle,
        );
        if (croppedFile != null) {
          setState(() => _imageFile = File(croppedFile.path));
        }
      }
    } catch (e) {
      print("Error cropping image: $e");
    }
  }
}
