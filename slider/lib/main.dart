import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  var swiperImages = [
    "assets/images/e.jpg",
    "assets/images/f.jpg",
    "assets/images/g.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swiper In Flutter'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        height: 400,
        width: double.infinity,
        child: Swiper(itemCount: swiperImages.length, itemBuilder: (context, index){
          return Image.asset(swiperImages[index], fit: BoxFit.fitHeight);
        },
        autoplay: true,
          pagination: SwiperPagination(),
          control: SwiperControl()
        ),
      ),
    );
  }
}
