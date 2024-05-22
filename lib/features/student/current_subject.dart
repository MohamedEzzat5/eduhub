import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';


class CurrentSubject extends StatefulWidget {
  const CurrentSubject({super.key});

  @override
  State<CurrentSubject> createState() => _CurrentSubjectState();
}

class _CurrentSubjectState extends State<CurrentSubject> {
  ScrollController scrollController = ScrollController();
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                color: kPrimaryColor,
                child:  Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap:(){Navigator.pop(context);},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
                              Text('المواد',style: Styles.textStyle24.copyWith(color: Colors.white),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset(Assets.imagesStars,alignment: Alignment.center,),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),)
                  ),








              ),
            ),
          ],
        ),
      ),
    );
  }
}
