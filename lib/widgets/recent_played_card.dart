import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/theme/my_theme.dart';

class RecentPlayedCard extends StatelessWidget {

  final ImageProvider image;
  final String text;

  const RecentPlayedCard({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle(
      height: 1.1.sp,
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
    );

    return ScaleTap(
      opacityMinValue: 0.8,
      scaleMinValue: 0.99,
      onPressed: () {},
      child: Container(
        width: 44.5.w,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: MyTheme.darkLight,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 8,
              child: FadeInImage(
                fadeInDuration: const Duration(milliseconds: 400),
                placeholder: const AssetImage('assets/placeholder.png'), 
                image: image,
              ),
            ),
            Flexible(
              flex: 16,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(text, style: textStyle, maxLines: 2, overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        ),
      ),
    );
  }
}