// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorButtons(),
    );
  }
}

class ColorButtons extends StatefulWidget {
  const ColorButtons ({Key? key});

  @override
  State<ColorButtons> createState() => _ColorButtonsState();
}

class _ColorButtonsState extends State<ColorButtons> {
  Color? selectedColor;

    List<Color> color1 = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.teal
    ];

    List<Color> color2 = [
      Colors.black,
      Colors.lime,
      Colors.pink,
      Colors.grey,
      Colors.brown,
      Colors.deepPurple,
      Colors.amber,
    ];

    final Map<Color, String> colorNames = {
    Colors.red: 'Red',
    Colors.green: 'Green',
    Colors.blue: 'Blue',
    Colors.yellow: 'Yellow',
    Colors.orange: 'Orange',
    Colors.purple: 'Purple',
    Colors.teal: 'Teal',
    Colors.black: 'Black',
    Colors.lime: 'Lime',
    Colors.pink: 'Pink',
    Colors.grey: 'Grey',
    Colors.brown: 'Brown',
    Colors.deepPurple: 'Deep Purple',
    Colors.amber: 'Amber',
  }; 

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selectedColor?? Colors.black,
             ),
             child: Center(
              child: Text(colorNames[selectedColor].toString(),
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22),)),
            ),
      
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: 
            //     List.generate(7, (index) => InkWell(
            //       onTap: (){
            //         setState(() {
            //           selectedColor = color1[index];
            //         });
            //       },
            //       child: Container(
            //       width: 100,
            //       height: 100,
            //       color: color1[index],
            //     ),
            //     ),
            //     ), 
            // ),
      
            SizedBox(height: 30),
      
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 7,
              crossAxisSpacing: 30,
              children: List.generate(7, (index) => InkWell(
                  onTap: (){
                    setState(() {
                      selectedColor = color1[index];
                    });
                  },
                  child: Container(
                  width: 50,
                  height: 50,
                  color: color1[index],
                ),
                ),
                ), 
            ),
      
            SizedBox(height: 20,),
      
             GridView.count(
              shrinkWrap: true,
              crossAxisCount: 7,
              crossAxisSpacing: 30,
              children: List.generate(7, (index) => InkWell(
                  onTap: (){
                    setState(() {
                      selectedColor = color2[index];
                    });
                  },
                  child: Container(
                  width: 50,
                  height: 50,
                  color: color2[index],
                ),
                ),
                ), 
            ),
          ],
        ),
      ), 
    );
  }
}
