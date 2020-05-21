import 'package:flutter/material.dart';

class AddAnimation extends StatefulWidget {
  @override
  _AddAnimationState createState() => _AddAnimationState();
}

class _AddAnimationState extends State<AddAnimation> {
  var colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.cyan,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("GoGame Task"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return new DetailPage();
                      },
                    ),
                  );
                },
                splashColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Hero(
                          tag: "heroTag",
                          child: Container(
                            color: Colors.red,
                            height: 100.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text("Tap for animation"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  @override
  _HeroDetailPageState createState() => _HeroDetailPageState();
}

class _HeroDetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: "Tag",
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(child: Text("Tap for animation", style: TextStyle(fontSize: 20.0),)),
            ),
          ),
        ],
      ),
    );
  }
}
