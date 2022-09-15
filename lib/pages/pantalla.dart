import 'package:expo/pages/Iconos.dart';
import 'package:expo/pages/Imagenes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "iconos",),
              Tab(text: "asset",),
              Tab(text: "net",),
              Tab(text: "Barra",),
              Tab(text: "file",),
              Tab(text: "RAM",),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            const Iconos(),
            const CargarAsset(),
            const CargarNet(),
            const CargarNetLoading(),
            CargarFile(),
            CargarMemoria(),
          ],
        ),
      ),
    );
  }
}
