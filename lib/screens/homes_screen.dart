import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController firstcontroller = TextEditingController();
  TextEditingController secondcontroller = TextEditingController();
  String result = "Result:";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CALCULATOR APP",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: firstcontroller,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "First Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const Gap(20),
              TextField(
                keyboardType: TextInputType.number,
                controller: secondcontroller,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Second Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        String no1 = firstcontroller.text;
                        String no2 = secondcontroller.text;
                        int first = int.parse(no1);
                        int second = int.parse(no2);
                        if (no1.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Please provide the First Number",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 7,
                              textColor: Colors.black,
                              toastLength: Toast.LENGTH_LONG,
                              fontSize: 30);

                          return;
                        }
                        if (no2.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Please provide the Second  Number",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 7,
                              textColor: Colors.black,
                              toastLength: Toast.LENGTH_LONG,
                              fontSize: 30);

                          return;
                        }
                        int res = first + second;
                        setState(() {
                          result = "Result : $res";
                        });
                      },
                      child: Text("+")),
                  ElevatedButton(
                      onPressed: () {
                        String no1 = firstcontroller.text;
                        String no2 = secondcontroller.text;
                        int first = int.parse(no1);
                        int second = int.parse(no2);
                        if (no1.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Please provide the First Number",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 7,
                              textColor: Colors.black,
                              toastLength: Toast.LENGTH_LONG,
                              fontSize: 30);

                          return;
                        }
                        if (no2.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Please provide the Second  Number",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 7,
                              textColor: Colors.black,
                              toastLength: Toast.LENGTH_LONG,
                              fontSize: 30);

                          return;
                        }
                        int res = first - second;
                        setState(() {
                          result = "Result : $res";
                        });
                      },
                      child: Text("-")),
                  ElevatedButton(
                      onPressed: () {
                        String no1 = firstcontroller.text;
                        String no2 = secondcontroller.text;
                        int first = int.parse(no1);
                        int second = int.parse(no2);
                        if (no1.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Please provide the First Number",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 7,
                              textColor: Colors.black,
                              toastLength: Toast.LENGTH_LONG,
                              fontSize: 30);

                          return;
                        }
                        if (no2.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Please provide the Second  Number",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 7,
                              textColor: Colors.black,
                              toastLength: Toast.LENGTH_LONG,
                              fontSize: 30);

                          return;
                        }
                        int res = first * second;
                        setState(() {
                          result = "Result : $res";
                        });
                      },
                      child: Text("*")),
                  ElevatedButton(
                      onPressed: () {
                        String no1 = firstcontroller.text;
                        String no2 = secondcontroller.text;
                        int first = int.parse(no1);
                        int second = int.parse(no2);
                        if (no1.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Please provide the First Number",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 7,
                              textColor: Colors.black,
                              toastLength: Toast.LENGTH_LONG,
                              fontSize: 30);

                          return;
                        }
                        if (no2.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Please provide the Second  Number",
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 7,
                              textColor: Colors.black,
                              toastLength: Toast.LENGTH_LONG,
                              fontSize: 30);

                          return;
                        }
                        double res = first / second;
                        setState(() {
                          result = "Result : $res";
                        });
                      },
                      child: Text("/")),
                ],
              ),
              Gap(20),
              ElevatedButton(
                  onPressed: () {
                    firstcontroller.clear();
                    secondcontroller.clear();
                  },
                  child: Text("C L E A R")),
              Gap(20),
              Text(
                result,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
