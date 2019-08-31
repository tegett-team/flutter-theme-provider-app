import 'package:flutter/material.dart';
import 'package:flutter_theme_provider/blocs/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: ListaBotones(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class ListaBotones extends StatelessWidget {
  const ListaBotones({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return Center(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text('Light'),
              onPressed: () => theme.setTheme(ThemeData.light())),
          RaisedButton(
              child: Text('Dark'),
              onPressed: () => theme.setTheme(ThemeData.dark())),
          RaisedButton(
              child: Text('Personalizado'),
              onPressed: () {
                theme.setTheme(ThemeData(
                    brightness: Brightness.light,
                    primaryColor: Colors.lime,
                    buttonColor: Colors.redAccent,
                    floatingActionButtonTheme: FloatingActionButtonThemeData(
                        backgroundColor: Colors.black87)));
              }),
        ],
      ),
    );
  }
}
