import 'package:flutter/material.dart';

class DoctorSearchList extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear))
  ];

  @override
  Widget buildResults(BuildContext context) {
    List<String> _suggestions = [];
    for (var x in _suggestions) {
      if (x.toLowerCase().contains(query.toLowerCase())) {
        _suggestions.add(x);
      }
    }
    return ListView.builder(
        itemCount: _suggestions.length, itemBuilder: (context, index) {
      var result = _suggestions[index];
      return ListTile(
        title: Text(result),
      );
    });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> _suggestions = [];
    for (var x in _suggestions) {
      if (x.toLowerCase().contains(query.toLowerCase())) {
        _suggestions.add(x);
      }
    }
    return ListView.builder(
        itemCount: _suggestions.length, itemBuilder: (context, index) {
      var result = _suggestions[index];
      return ListTile(
        title: Text(result),
      );
    });
  }
}