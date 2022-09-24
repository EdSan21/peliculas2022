import 'package:flutter/material.dart';
import 'package:peliculas2022/models/model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:card_swiper/card_swiper.dart';

class CompanyImagesScreen extends StatelessWidget {
  const CompanyImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExFinal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselSliderExample(),
    );
  }
}

class CarouselSliderExample extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CarouselSliderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Companies Images"),
        ),
        body: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWpkJsk0wNerFnprRuUzNQgMXdxI4mvq2alDdv-OQTjsmx0fHJk2Ps76A-U1VrvlGRS1k&usqp=CAU");
          },
          itemCount: 10,
          itemWidth: 300.0,
          layout: SwiperLayout.STACK,
        ));
  }
}
