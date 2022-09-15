import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

var fileImage;

class CargarAsset extends StatelessWidget {
  const CargarAsset({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      ///////////////////////////
      child: Image.asset("img/cat.png"),
      ///////////////////////////
    );
  }
}

class CargarNet extends StatelessWidget {
  const CargarNet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      ///////////////////////////
      padding: const EdgeInsets.all(10),
      child: Image.network(
          'https://cdn.discordapp.com/attachments/404777964706725892/1018645299922747653/cat.png'),
    );
    ///////////////////////////
  }
}

class CargarNetLoading extends StatelessWidget {
  const CargarNetLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        ///////////////////////////
        child: Image.network(
          'https://media.discordapp.net/attachments/404777964706725892/1018657822797484173/cat2.png',
          loadingBuilder: ((context, child, loadingProgress) {
            return loadingProgress == null
                ? child
                : const LinearProgressIndicator();
          }),
        ));
    ///////////////////////////
  }
}

class CargarFile extends StatefulWidget {
  @override
  _CargarFileState createState() => _CargarFileState();
}

class _CargarFileState extends State<CargarFile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          if (fileImage != null) ...[
            Container(
                constraints: BoxConstraints(maxHeight: 600),
                ///////////////////////////
                child: Image.file(fileImage)),
            //////////////////////////
          ],
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: const Icon(Icons.upload, color: Colors.black),
              onPressed: () async {
                final picker = ImagePicker();
                final pickedFile =
                    await picker.pickImage(source: ImageSource.gallery);
                if (pickedFile == null) return;
                final file = File(pickedFile.path);
                setState(() {
                  fileImage = file;
                });
              },
            ),
          )
        ]));
  }
}

class CargarMemoria extends StatefulWidget {
  @override
  _CargarMemoriaState createState() => _CargarMemoriaState();
}

class _CargarMemoriaState extends State<CargarMemoria> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          if (fileImage != null) ...[
            Container(
                constraints: BoxConstraints(maxHeight: 600),
                ///////////////////////////
                child: Image.memory(fileImage.readAsBytesSync())),
            //////////////////////////
          ]
        ]));
  }
}
//flutter run --web-renderer html

