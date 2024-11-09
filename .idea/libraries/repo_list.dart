import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RepoListScreen extends StatelessWidget {
  Future<List<dynamic>> fetchRepos() async {
    final response = await http.get(Uri.parse('https://api.github.com/gists/public'));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchRepos(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error loading repos'));
        }

        final repos = snapshot.data;
        return ListView.builder(
          itemCount: repos.length,
          itemBuilder: (context, index) {
            final repo = repos[index];
            return ListTile(
              title: Text(repo['description'] ?? 'No description'),
              subtitle: Text("Comments: ${repo['comments']}"),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Created: ${repo['created_at']}"),
                  Text("Updated: ${repo['updated_at']}"),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RepoFilesScreen(repo['files'])));
              },
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Owner Info'),
                    content: Text('Owner: ${repo['owner']['login']}'),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
