import 'package:flutter/material.dart';
import 'package:peliculas2022/models/model.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _OverView(),
    );
  }
}

class _OverView extends StatelessWidget {
  _OverView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Companies - TMDB"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Company 1"),
            ),
            ListTile(
              title: Text("Company 2"),
            ),
            ListTile(
              title: Text("Company 3"),
            ),
            ListTile(
              title: Text("Company 4"),
            ),
            ListTile(
              title: Text("Company 5"),
            ),
          ],
        ),
      ),
    );
  }
}
