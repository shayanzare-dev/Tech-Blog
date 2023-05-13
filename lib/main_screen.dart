// ignore_for_file: unnecessary_const, depend_on_referenced_packages, unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog/Colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'main.dart';
import 'package:tech_blog/models/fake_data.dart';
import 'Strings.dart';

void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      Locale('fa', ''), // farsi
    ],
    home: MainScreen()));

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var TextTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyRightMargin = size.width / 10;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: [
            // appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                Image(
                  image: Assets.images.logo.provider(),
                  height: size.height / 13.6,
                ),
                const Icon(
                  Icons.search,
                ),
              ],
            ),
            const SizedBox(height: 8),
            // poster
            Stack(
              children: [
                Container(
                  height: size.height / 4.2,
                  width: size.width / 1.25,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(homePagePosterMap["ImageAssets"]),
                    ),
                  ),
                  foregroundDecoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                          colors: GradianrColors.homePosterCoverGradiant,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                              homePagePosterMap["Writer"] +
                                  "  -  " +
                                  homePagePosterMap["Date"],
                              style: TextTheme.titleMedium),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                homePagePosterMap["View"],
                                style: TextTheme.titleMedium,
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.grey,
                                size: 16,
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        homePagePosterMap["Title"],
                        style: TextTheme.displayLarge,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            // tag List
            SizedBox(
              height: size.height / 14,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: tagList.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(size.width / 15, 8,
                          index == 0 ? bodyRightMargin : 10, 8),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: size.height / 14,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            gradient: LinearGradient(
                                colors: GradianrColors.Tags,
                                begin: Alignment.centerRight,
                                end: Alignment.bottomLeft),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 6, 5, 5),
                            child: Row(children: [
                              ImageIcon(
                                Assets.images.hashTagIcon.provider(),
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                tagList[index].title.toString(),
                                style: TextTheme.displayMedium,
                              )
                            ]),
                          ),
                        ),
                      ),
                    );
                  })),
            ),
            const SizedBox(height: 16),
            // hottestPosts
            Padding(
              padding: EdgeInsets.only(right: bodyRightMargin, bottom: 8),
              child: Row(
                children: [
                  ImageIcon(
                    Assets.images.bluePenIcon.provider(),
                    color: SolidColors.hottestPosts,
                  ),
                  const SizedBox(width: 8),
                  Text(Strings.ViewHotestBlog, style: TextTheme.displaySmall),
                ],
              ),
            ),
            // blog post
            SizedBox(
              width: size.width,
              height: size.height / 4.2,
              child: Padding(
                padding: EdgeInsets.only(right: bodyRightMargin),
                child: CarouselSlider.builder(
                  options: CarouselOptions(autoPlay: true),
                  itemCount: blogList.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return Container(
                      height: size.height / 5.53,
                      width: size.width / 2.66,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(blogList[index].imageUrl))),
                      foregroundDecoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: GradianrColors.blogPostGradiant)),
                      child: Text(blogList[index].title),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
