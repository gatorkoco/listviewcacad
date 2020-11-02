import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Widget dataBarang = new Container(
      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.asset(
          'assets/images/gambar2.jpg',
          height: 150,
          width: 150,
        ),
        SizedBox(
          width: 14.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'Sepatu Konverse',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text('+ - 1kg',
                style: TextStyle(fontSize: 16.0, color: Colors.grey)),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Rp 800.000',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 60),
                RawMaterialButton(
                    fillColor: Colors.blue,
                    splashColor: Colors.blueAccent,
                    child: Text(
                      'Beli',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: null)
              ],
            )
          ],
        ),
      ]));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
                ),
                centerTitle: true,
                title: Text('Flash Deal',
                    style: TextStyle(color: Colors.grey, fontSize: 30))),
            body: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return dataBarang;
              },
            )));
  }
}
