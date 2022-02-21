import 'package:flutter/material.dart';
import 'package:mm_school/common_widgets/app_text.dart';
import 'package:mm_school/models/standards.dart';
import 'package:mm_school/styles/colors.dart';

class StandardItemCardWidget extends StatelessWidget {
  StandardItemCardWidget({ Key? key, required this.item}) : super(key: key);
  final StateItem item;

  final double width = 174;
  final double height = 250;
  final Color borderColor = Color(0xffE2E2E2);
  final double borderRadius = 18;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: imageWidget(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AppText(
              text: item.name,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      child: Image.asset(item.imagePath),
    );
  }

}
