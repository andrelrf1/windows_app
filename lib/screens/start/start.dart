import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../home/home.dart';
import '../user/user.dart';
import '../favorites/favorites.dart';
import '../playlists/playlist.dart';
import '../search/search.dart';
import '../settings/settings.dart';
import 'components/player.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  List<String> pageTitle = [
    'Home',
    'User',
    'Favorites',
    'Playlist',
    'Search',
    'Settings',
  ];
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        title: Center(
          child: Text(
            pageTitle[indexPage],
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: Colors.grey[800],
            selectedIndex: indexPage,
            onDestinationSelected: (value) {
              setState(() {
                indexPage = value;
              });
            },
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('User'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.favorite),
                label: Text('Favorites'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.queue_music),
                label: Text('PlayList'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.search),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                IndexedStack(
                  index: indexPage,
                  children: <Widget>[
                    Home(),
                    User(),
                    Favorites(),
                    PlayList(),
                    Search(),
                    Settings(),
                  ],
                ),
                Player(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
