import 'dart:math';

import 'package:flutter/material.dart';

class ChangeWallpaper extends StatefulWidget {
  const ChangeWallpaper({super.key});

  @override
  State<ChangeWallpaper> createState() => _ChangeWallpaperState();
}

class _ChangeWallpaperState extends State<ChangeWallpaper> {
  List imgList = const [
    NetworkImage(
        'https://cdn.pixabay.com/photo/2023/06/01/06/52/painting-8032889_1280.png'),
    NetworkImage(
        'https://cdn.pixabay.com/photo/2023/07/30/00/12/cat-8157889_1280.png'),
    NetworkImage(
        'https://cdn.pixabay.com/photo/2022/01/22/00/32/bird-6956012_1280.png'),
    NetworkImage(
        'https://cdn.pixabay.com/photo/2021/02/18/05/02/frog-6026117_1280.png'),
    NetworkImage(
        'https://cdn.pixabay.com/photo/2022/08/25/23/06/woman-7411414_1280.png'),
  ];
  NetworkImage? randomImage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wallpaper Example'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              randomImage = imgList[Random.secure().nextInt(imgList.length)];
            });
          },
          child: const Text('Change'),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: randomImage ?? imgList[0],
                opacity: 1,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
