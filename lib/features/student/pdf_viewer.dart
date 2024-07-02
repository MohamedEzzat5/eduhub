import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class PdfViewerScreen extends StatelessWidget {
  const PdfViewerScreen({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text('اللائحة'),
      ),
      body: Column(
        children: [
          Container(
            height: 0,
            width: double.infinity,
            color: kPrimaryColor,
            child: Image.asset(
              Assets.imagesStars,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
              child: const PDF().cachedFromUrl(url,
                  placeholder: (double progress) => Center(
                          child: Text(
                        "$progress%",
                        style: Styles.textStyle20,
                      )),
                  errorWidget: (error) =>
                      Center(child: Text(error.toString())))),
        ],
      ),
    );
  }
}
