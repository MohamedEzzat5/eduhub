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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                color: kPrimaryColor,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                'اللائحة',
                                style: Styles.textStyle24
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      Assets.imagesStars,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 7,
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
      ),
    );
  }
}
