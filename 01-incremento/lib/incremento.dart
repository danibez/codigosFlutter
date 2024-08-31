
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp>{
  late int num;
  @override
  void initState() {
    num = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(210, 255, 255, 255),
          title: const Text("Meu app",
            style: TextStyle(
              fontSize: 36,
              color: Color.fromARGB(255, 47, 0, 255)),),),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(100),
            padding: const EdgeInsets.all(50),
            color: const Color.fromARGB(255, 255, 0, 0),
            child: Container(
              color: const Color.fromARGB(255, 0, 0, 255),
              child: 
            Column(
            children: [
              Text(num.toString(),
                style: const TextStyle(fontSize: 42),
              ),
              Container(
                color: const Color.fromARGB(255,0, 255, 0),
                child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    setState(() {
                      num += 1;
                    });
                  },
                    child: const Text("Add",
                                  style: TextStyle(fontSize: 36,
                                  fontFamily: "Times New Roman"),
                                )),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      num -= 1;
                    });
                  }, child: const Text("Sub",
                                  style: TextStyle(fontSize: 36),
                                )),
                ],
              ))
            ],
          )))
        ),
      ),
    );
  }
}
