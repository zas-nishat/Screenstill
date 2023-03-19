import 'package:flutter/material.dart';

class MySearchDelaget extends SearchDelegate{

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){ close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  List<Widget>? buildActions(BuildContext context) => [ IconButton(
      onPressed: (){
        query = "";
      },
      icon: Icon(Icons.clear))

  ];

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500
      ),
    ),
  );


  @override
  Widget buildSuggestions(BuildContext context) {

    List <String> _suggestions = [
      'Napa',
      "papa",
      "kapa",
      "mapa",
      "bapa",
      "gapa",
    ];
    return ListView.builder(
        itemCount: _suggestions.length,
        itemBuilder: (context , index){
          final suggestion = _suggestions[index];
          return ListTile(title: Text(suggestion),
            onTap: (){
              query = suggestion;
              showResults(context);
            },

          );
        });


  }

}