import 'package:flutter/material.dart';
import 'package:peliculas2022/models/model.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Cast cast = ModalRoute.of(context)!.settings.arguments as Cast;
    final CompanyDetails companyDetails =
        ModalRoute.of(context)!.settings.arguments as CompanyDetails;

    return Scaffold(
      body:
          CustomScrollView(slivers: <Widget>[_CredCast(cast, companyDetails)]),
    );
  }
}

class _CredCast extends StatelessWidget {
  final Cast cast;
  final CompanyDetails companyDetails;
  _CredCast(Cast this.cast, this.companyDetails);

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
            Text(
              companyDetails.name,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ));
  }
}
