import 'package:flutter/material.dart';
import 'package:flutter_one/card.dart';

void main() {
  runApp(MaterialApp(
    title: "Experiment App",
    home: MyInputField(),
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
  ));
}

class MyInputField extends StatefulWidget {
  const MyInputField({
    Key? key,
  }) : super(key: key);

  @override
  State<MyInputField> createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  var email;
  var name;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My App")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            name = _namecontroller.text;
            email = _emailcontroller.text;
          });
        },
        child: Icon(Icons.edit),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _namecontroller,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Name",
                          labelText: "Name",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _emailcontroller,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          labelText: "Email",
                        ),
                      ),
                    ),
                    Text(
                      _namecontroller.text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(_emailcontroller.text),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          index: 1,
          onPress: () => {
            print('hello'),
          },
        ),
      ],
    );
  }
}
