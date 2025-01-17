import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 9',
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
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Weather Forecast'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter City Name',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text('Murmansk Oblast, RU', style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text('Tuesday, Apr 20, 2021', style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 100),
                  child: Icon(
                    Icons.cloud,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 40, right: 100),
                    child: Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              '14°C',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                                'CLOUDY',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                )
                            ),
                          ],
                        )
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.waves,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )
                            ),
                            Text(
                                'km/hr',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                            ),
                          ],
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.waves,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                                '15',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )
                            ),
                            Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                            ),
                          ],
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.waves,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                                '36',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )
                            ),
                            Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )
                            ),
                          ],
                        )
                    )
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text('7-DAY WEATHER FORECAST', style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 160,
                        child: Card(
                            color: Colors.white12,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      'Tuesday',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 30),
                                        child: Text(
                                          '13°C',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, right: 30),
                                        child: Icon(
                                          Icons.cloud,
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 160,
                        child: Card(
                            color: Colors.white12,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      'Thursday',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 30),
                                        child: Text(
                                          '15°C',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, right: 35),
                                        child: Icon(
                                          Icons.ac_unit,
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 160,
                        child: Card(
                            color: Colors.white12,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      'Friday',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 30),
                                        child: Text(
                                          '11°C',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, right: 35),
                                        child: Icon(
                                          Icons.wb_sunny_sharp,
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 160,
                        child: Card(
                            color: Colors.white12,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      'Saturday',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 30),
                                        child: Text(
                                          '16°C',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, right: 35),
                                        child: Icon(
                                          Icons.wb_sunny_sharp,
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 160,
                        child: Card(
                            color: Colors.white12,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      'Sunday',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 30),
                                        child: Text(
                                          '13°C',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, right: 35),
                                        child: Icon(
                                          Icons.cloud,
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 160,
                        child: Card(
                            color: Colors.white12,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      'Monday',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 30),
                                        child: Text(
                                          '17°C',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, right: 35),
                                        child: Icon(
                                          Icons.cloud,
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                    ),
                    Container(
                        width: 160,
                        child: Card(
                            color: Colors.white12,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      'Wednesday',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                      )
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 30),
                                        child: Text(
                                          '10°C',
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, right: 35),
                                        child: Icon(
                                          Icons.wb_sunny_sharp,
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                    )
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}
