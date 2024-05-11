import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomAdminGridViewItem extends StatelessWidget {
  const CustomAdminGridViewItem({
    super.key, required this.image, required this.title,
  });
  final String image,title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        children: [
          Image.asset(
            image,
            height: context.height*0.13,
          ),
          const SizedBox(height: 20,),
          Text(title,style: Styles.textStyle20,)
        ],
      ),
    );
  }
}