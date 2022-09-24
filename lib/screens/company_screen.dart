import 'package:flutter/material.dart';
import 'package:peliculas2022/models/model.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CompanyDetails movie =
        ModalRoute.of(context)!.settings.arguments as CompanyDetails;

    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[_OverView(movie)]),
    );
  }
}

class _OverView extends StatelessWidget {
  final CompanyDetails movie;
  _OverView(CompanyDetails this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        movie.name,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
