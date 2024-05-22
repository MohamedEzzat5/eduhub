import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomAdminGridViewItem extends StatelessWidget {
  const CustomAdminGridViewItem({
    super.key, required this.image, required this.title, required this.onTap
  });
  final String image,title;
  final VoidCallback onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Image.asset(
              image,
              height: context.height*0.13,
            ),
            const SizedBox(height: 8,),
            Text(title,style: Styles.textStyle20,)
          ],
        ),
      ),
    );
  }
}