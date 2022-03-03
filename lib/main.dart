import 'package:flutter/material.dart';


 dynamic kAppBar = AppBar(
  title: const Text("Check box widget"),
  centerTitle: true,
);
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool valueChange = false;
  bool statusValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70,width: 5),
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  child: Checkbox(
                    value: valueChange,
                    onChanged: (value) {
                      setState(() {
                        valueChange = value!;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 5,),
              const Text('Tea',style: TextStyle(fontSize: 30),),
              ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70,width: 5),
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  child: Checkbox(
                    value: statusValue,
                    onChanged: (status) {
                      setState(() {
                        statusValue = status!;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 5,),
              const Text('Coffee',style: TextStyle(fontSize: 30),),
            ],
          ),


        ],
      )
    );
  }
}
