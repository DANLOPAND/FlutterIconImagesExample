import 'package:flutter/material.dart';

class Iconos extends StatelessWidget {

  const Iconos({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: const [   Icon(
      
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(3, 3),
          blurRadius: 3.0,
          color: Colors.black,
        ),
      ],
    ),



    Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 44.0,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0, 0),
          blurRadius: 3.0,
          color: Colors.green,
        ),
      ],
    ),


    
    Icon(
      Icons.beach_access,
      color: Colors.blue,
      size: 64.0,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1, 1),
          blurRadius: 0.0,
          color: Colors.black,
        ),
      ],
    ),],);
  }
}