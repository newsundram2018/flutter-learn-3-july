import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: "My App for API's",
    home: HomeApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.pink),
  ));
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;
  var res;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    setState(() {});
  }

  getData() async {
    res = await http.get(Uri.parse(url));
    data = await jsonDecode(res.body);

    data != null ? print(data.length) : null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Request"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("Hello")},
        child: Icon(Icons.add_circle),
      ),
      body: Center(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      leading: Image.network(data[index]['url']),
                      subtitle: Text("ID$index"),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Container(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
