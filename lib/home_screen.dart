import 'package:flutter/material.dart';
import 'repo_list.dart';
import 'gallery_grid.dart';
import 'bookmarks_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [RepoListScreen(), GalleryGridScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repo Gallery'),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BookmarksScreen()));
            },
          ),
        ],
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Repo List"),
          BottomNavigationBarItem(icon: Icon(Icons.photo_album), label: "Gallery"),
        ],
      ),
    );
  }
}
