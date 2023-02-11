import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Phone_layout (),
    );
  }
}
class Phone_layout extends StatefulWidget {
  const Phone_layout({super.key});

  @override
  State<Phone_layout> createState() => _Phone_layoutState();
}

class _Phone_layoutState extends State<Phone_layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Icon(Icons.lock, size: 100.0),
                    Text(
                      "กรุณาใส่รัหสผ่าน",
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                ['1', '2', '3'],
                ['4', '5', '6'],
                ['7', '8', '9'],
                ['', '0', 'X']
              ].map((item) => _buildRow(item)).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: TextButton(
                    child: Text('ลืมรหัสผ่าน'),
                    onPressed: () {
                      print('Pressed');
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}

Row _buildRow(List<String> numberList) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // collection for

      for (var i = 0; i < numberList.length; i++) _buildButton(numberList[i]),
    ],
  );
}

Widget _buildButton(String number) {
  if (number == '') {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
      ),
    );
  } else if (number == 'X') {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        child: Icon(
          Icons.backspace_rounded,
          size: 50,
          color: Color.fromARGB(255, 46, 46, 46),
        ),
      ),
    );
  } else {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        child: Center(
          child: Text(number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border:
            Border.all(color: Color.fromARGB(146, 19, 18, 18), width: 2.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // สีเงา
                offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
      ),
    );
  }
}




