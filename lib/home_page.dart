import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beta Testing App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Beta Testing App',
              style: TextStyle(
                  color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                //change text color when the button is pressed
                textColor =
                    textColor == Colors.black ? Colors.red : Colors.black;
                setState(() {});
              },
              color: Colors.black,
              textColor: Colors.white,
              child: Text("Change Color"),
            )
          ],
        ),
      ),
    );
  }
}
