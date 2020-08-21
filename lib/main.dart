import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeStateNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeStateNotifier>(
      builder: (context, themeState, child) {
        return MaterialApp(
          title: 'Calculator',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: MyHomePage(title: 'Calculator'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputNumber = '0';
  KeyController
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.solidMoon,
                            ),
                            Switch(
                                activeColor: Colors.deepOrange,
                                value: Provider.of<ThemeStateNotifier>(context,
                                        listen: false)
                                    .isDarkMode,
                                onChanged: (boolVal) {
                                  Provider.of<ThemeStateNotifier>(context,
                                          listen: false)
                                      .updateTheme(boolVal);
                                }),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              inputNumber,
                              style: TextStyle(fontSize: 50),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('= 10', style: TextStyle(fontSize: 45)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'C',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .color),
                          ),
                        ),
                        FlatButton(
                          child: Icon(
                            Icons.backspace,
                            color: Theme.of(context).iconTheme.color,
                            size: 30.0,
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '%',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .color),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '÷',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .color),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              inputNumber = '7';
                            });
                          },
                          child: Text(
                            '7',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text('8',
                              style: TextStyle(
                                fontSize: 40.0,
                              )),
                        ),
                        FlatButton(
                          child: Text('9',
                              style: TextStyle(
                                fontSize: 40.0,
                              )),
                        ),
                        FlatButton(
                          child: Text('×',
                              style: TextStyle(
                                fontSize: 40.0,
                                color:
                                    Theme.of(context).textTheme.bodyText2.color,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            '4',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '5',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '6',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '-',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .color),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .color),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            '',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .color),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '.',
                            style: TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                            onPressed: null,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '=',
                                style: TextStyle(
                                  fontSize: 40.0,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ThemeStateNotifier extends ChangeNotifier {
  bool isDarkMode = false;

  void updateTheme(bool isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners();
  }
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    accentColor: Colors.teal,
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.teal),
    iconTheme: IconThemeData(color: Colors.teal),
    textTheme: TextTheme(bodyText2: TextStyle(color: Colors.teal)),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    accentColor: Colors.deepOrange,
    iconTheme: IconThemeData(color: Colors.deepOrange),
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.deepOrange),
    ),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.deepOrange),
  );
}
