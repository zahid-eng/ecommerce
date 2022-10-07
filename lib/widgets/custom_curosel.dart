import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_project/utils/quotes.dart';
import 'package:my_project/widgets/safe_webView.dart';

class CustomCurosel extends StatelessWidget {
  const CustomCurosel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void getnavigateWebView(BuildContext context, Widget route) {
      Navigator.push(context, CupertinoPageRoute(builder: (context) => route));
    }

    return Container(
        child: CarouselSlider(
            items: List.generate(
                imageSlider.length,
                (index) => Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          if (index == 0) {
                            getnavigateWebView(
                                context,
                                SafeWebView(
                                  url: "https://womanupdate.org/",
                                ));
                          } else if (index == 1) {
                            getnavigateWebView(
                                context,
                                SafeWebView(
                                  url:
                                      "https://news.un.org/en/news/topic/women",
                                ));
                          } else if (index == 2) {
                            getnavigateWebView(
                                context,
                                SafeWebView(
                                  url:
                                      "https://www.trustpilot.com/review/womensbest.com",
                                ));
                          } else if (index == 3) {
                            getnavigateWebView(
                                context,
                                SafeWebView(
                                  url:
                                      "https://www.rd.com/list/womens-history-quotes",
                                ));
                          } else {
                            getnavigateWebView(
                                context,
                                SafeWebView(
                                  url:
                                      "https://www.cfr.org/article/womens-power-index",
                                ));
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(imageSlider[index]),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  articleTitle[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12),
                                )),
                          ),
                        ),
                      ),
                    )),
            options: CarouselOptions(
                autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true)));
  }
}
