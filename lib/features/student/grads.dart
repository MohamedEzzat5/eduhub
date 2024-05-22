import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_button.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';


class GradsScreen extends StatefulWidget {
  const GradsScreen({super.key});

  @override
  State<GradsScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<GradsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            const SizedBox(height: 20,),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                color: kPrimaryColor,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                                size: 26,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                  },
                                child: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color(0xffC2D7F2),
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 5,
                                color: Colors.grey,
                              ),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '85%',
                                  style: Styles.textStyle24,
                                ),Text(
                                  'ممتاز',
                                  style: Styles.textStyle24,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      Assets.imagesStars,
                      height: context.height,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Spacer(flex: 1,),
                        const Text('Ahmed Mamdoh',style: Styles.textStyle22,),
                        const Spacer(flex: 1,),
                        Container(
                          height: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 280,
                                    alignment: Alignment.center,
                                    width: context.width/4,

                                    decoration: const BoxDecoration(
                                      color: Color(0xffE6EFFF),
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
                                    ),
                                    child: ListView.builder(
                                       physics: const NeverScrollableScrollPhysics(),
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return const Center(child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('100',style: Styles.textStyle22,),
                                        ));
                                      },
                                    ),


                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 280,
                                    alignment: Alignment.center,
                                    width: context.width/4,
                                    decoration: const BoxDecoration(
                                      color:  Color(0xfff0f9ee),
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),
                                    ),
                                    child: ListView.builder(
                                       physics: const NeverScrollableScrollPhysics(),
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        List<String> grads = ['74-B','75-B','76-B','77-B','78-B','78-B'];
                                        return  Center(child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(grads[index] , style: Styles.textStyle22,),
                                        ));
                                      },
                                    ),


                                  ),

                                ],
                              ),
                              Expanded(
                                child: Container(
                                  height: 280,
                                  alignment: Alignment.centerRight,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),
                                  ),

                                  child: ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      List<String> subjects = ['التعرف على الكلام','برمجة الألعاب','النظم الموزعه','الكائنات الالية','استرجاع المعلومات','معالجة اللغات الطبيعيه',];
                                      return  Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(subjects[index] , style: Styles.textStyle20,textAlign:TextAlign.end,),
                                      );
                                    },
                                  ),


                                ),
                              ),

                            ],
                          ),
                        ),
                        const Spacer(flex: 2,),
                        CustomMaterialButton(onPressed: (){}, text: 'طباعه النتيجة',radius: 20,fontSize: 16,fontWeight: FontWeight.w700,width: context.width*0.75,),
                        const Spacer(flex: 2,),



                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
