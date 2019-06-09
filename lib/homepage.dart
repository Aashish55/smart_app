import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Material myItems(
    IconData icon,
    String heading,
    int color,
    String path,
  ) {
    return Material(
      color: Color(0xfff1f2f6),
      elevation: 14.0,
      shadowColor: Colors.redAccent,
      borderRadius: BorderRadius.circular(25.0),
      child: Center(
        child: RaisedButton(
          onPressed: () => {Navigator.pushReplacementNamed(context, "/$path")},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      color: new Color(color),
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Text(
                      heading,
                      style: TextStyle(
                        color: new Color(0xffb2b2b2),
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Smart App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff7f8fa6),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15.0,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        children: <Widget>[
          myItems(Icons.add, "Calculator", 0xff1abc9c, "calculator"),
          myItems(Icons.note, "Notes", 0xff00cec9, "notes"),
          myItems(Icons.attach_money, "Converter", 0xffff6b81, "converter"),
          myItems(Icons.cloud, "Weather", 0xff5352ed, "weather"),
          myItems(Icons.screen_lock_landscape, "Vault", 0xff2ed573, "vault"),
          myItems(Icons.scanner, "Scanner", 0xffeccc68, "scanner"),
          myItems(Icons.share, "File Share", 0xffff6b81, "file_share"),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(2, 130.0),
        ],
      ),
      backgroundColor: Color(0xffdcdde1),
    );
  }
}
