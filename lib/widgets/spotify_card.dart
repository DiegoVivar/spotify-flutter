import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/theme/my_theme.dart';
import 'package:spotify/widgets/body_title.dart';

enum CardType {
  album,
  artist
}

class SpotifyCard extends StatelessWidget {

  final CardType type;
  final String artist;
  final ImageProvider image;
  final String? title;

  const SpotifyCard({
    Key? key, 
    required this.type, 
    required this.artist, 
    required this.image, 
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle titleStyle = TextStyle(
      height: 1.1.sp,
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
    );
    TextStyle subtitleStyle = TextStyle(
      height: 1.1.sp,
      fontSize: 9.2.sp,
      fontWeight: FontWeight.w400,
      color: MyTheme.darkLighter
    );

    return ScaleTap(
      opacityMinValue: 0.8,
      scaleMinValue: 0.99,
      onPressed: () {},
      child: SizedBox(
        width: 38.w,
        child: Column(
          crossAxisAlignment: type == CardType.artist ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                shape: type == CardType.artist ? BoxShape.circle : BoxShape.rectangle
              ),
              child: FadeInImage(
                fadeInDuration: const Duration(milliseconds: 400),
                placeholder: const AssetImage('assets/placeholder.png'), 
                image: image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: type == CardType.artist ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? artist, 
                    style: titleStyle, 
                    textAlign: type == CardType.artist ? TextAlign.center : TextAlign.left,
                    maxLines: 1, 
                    overflow: TextOverflow.ellipsis
                  ),
                  if(type == CardType.album)
                    ...[
                      const SizedBox(height: 3),
                      Text('Álbum • $artist', style: subtitleStyle, maxLines: 2, overflow: TextOverflow.ellipsis),
                    ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpotifyCardCarousel extends StatelessWidget {

  final String carouselTitle;
  final List<SpotifyCard> cardList;

  const SpotifyCardCarousel({
    super.key, 
    required this.carouselTitle,
    required this.cardList
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 4.h, bottom: 2.5.h),
          padding: MyTheme.bodySpacingHorizontal,
          child: BodyTitle(text: carouselTitle),
        ),
        SingleChildScrollView(
          padding: MyTheme.bodySpacingHorizontal,
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 4.w,
            children: cardList,
          )
        )
      ],
    );
  }
}