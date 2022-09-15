import 'package:flutter/material.dart';
import 'package:peliculas2022/models/model.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Cast cast = ModalRoute.of(context)!.settings.arguments as Cast;

    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[_CredCast(cast)]),
    );
  }
}

class _CredCast extends StatelessWidget {
  final Cast cast;
  _CredCast(Cast this.cast);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            Text(
              cast.knownForDepartment,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              cast.name,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              cast.originalName,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ));
  }
}
