import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/models/fake_data.dart';

void main() => runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("GFG Slider"),
        ),
        body: CarouselSlider.builder(
          itemCount: blogList.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              width: 200,
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  blogList[index].id.toString(),
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 180.0,
            onScrolled: (value) {},
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        )

//       ListView.builder(
//         itemCount: blogList.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return SizedBox(
//             width: size.width,
//             //height: size.height,
//             child: CarouselSlider(
//               items: [
//                 Container(
//                   width: 200,
//                   margin: const EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   child: Text(
//                     blogList[index].writer,
//                   ),
//                 )
//               ],

//               //Slider Container properties
//               options: CarouselOptions(
//                 height: 180.0,
//                 onScrolled: (value) {},
//                 enlargeCenterPage: true,
//                 autoPlay: true,
//                 aspectRatio: 16 / 9,
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 autoPlayAnimationDuration: const Duration(milliseconds: 800),
//                 viewportFraction: 0.8,
//               ),
//             ),
//           );
//         },
//       ),
        );
  }
}
