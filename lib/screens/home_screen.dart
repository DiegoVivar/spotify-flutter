import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/theme/my_theme.dart';
import 'package:spotify/widgets/spotify_card.dart';
import 'package:spotify/widgets/body_title.dart';
import 'package:spotify/widgets/recent_played_card.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    String luisMiguel = 'https://i.scdn.co/image/ab6761610000e5eb6481401e529e475116702a29';
    String megadeth = 'https://i.scdn.co/image/ab6761610000e5eb79058c0b634631533ed40b22';
    String chayanne = 'https://i.scdn.co/image/ab6761610000e5ebe2efbe510ede3ecd9db620f0';

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 6.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 3.h),
                padding: MyTheme.bodySpacingHorizontal,
                child: Column(
                  children: [

                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BodyTitle(text: 'Buenas tardes'),
                        Wrap(
                          spacing: 4.4.w,
                          children: [
                            ScaleTap(
                              opacityMinValue: 0.5,
                              scaleMinValue: 0.86,
                              onPressed: () {},
                              child: Icon(LineIcons.bell, color: MyTheme.white, size: 24.sp),
                            ),
                            ScaleTap(
                              opacityMinValue: 0.5,
                              scaleMinValue: 0.86,
                              onPressed: () {},
                              child: Icon(LineIcons.history, color: MyTheme.white, size: 24.sp),
                            ),
                            ScaleTap(
                              opacityMinValue: 0.5,
                              scaleMinValue: 0.86,
                              onPressed: () {},
                              child: Icon(LineIcons.cog, color: MyTheme.white, size: 24.sp),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Recent played
                    Container(
                      width: 92.w,
                      margin: EdgeInsets.only(top: 2.5.h),
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        spacing: 3.w,
                        runSpacing: 2.5.w,
                        children: [
                          const RecentPlayedCard(
                            image: NetworkImage('https://i1.sndcdn.com/artworks-y6qitUuZoS6y8LQo-5s2pPA-t500x500.jpg'),
                            text: 'Tus me gusta',
                          ),
                          const RecentPlayedCard(
                            image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_664913-MLC31789978317_082019-O.jpg'),
                            text: 'Rust in Peace',
                          ),
                          RecentPlayedCard(
                            image: NetworkImage(chayanne),
                            text: 'Chayanne',
                          ),
                          RecentPlayedCard(
                            image: NetworkImage(luisMiguel),
                            text: 'Luis Miguel',
                          ),
                          const RecentPlayedCard(
                            image: NetworkImage('https://static.qobuz.com/images/covers/55/84/5099997848455_600.jpg'),
                            text: 'Countdown to Extinction',
                          ),
                          const RecentPlayedCard(
                            image: NetworkImage('https://i.scdn.co/image/ab67706f00000003863b311d4b787ed621f7e696'),
                            text: 'Coding Mode',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SpotifyCardCarousel(
                carouselTitle: 'Vuelve a tu música',
                cardList: [
                  const SpotifyCard(
                    type: CardType.album,
                    artist: 'Megadeth',
                    image: NetworkImage('https://i.scdn.co/image/ab67616d0000b2738fc06398d8852596d4981252'), 
                    title: "Peace Sells... But Who's Buying?",
                  ),
                  const SpotifyCard(
                    type: CardType.album,
                    artist: 'Megadeth',
                    image: NetworkImage('https://i.scdn.co/image/ab67616d0000b2733171798d5cfc745f0ba24c84'), 
                    title: 'Youthanasia',
                  ),
                  const SpotifyCard(
                    type: CardType.album,
                    artist: 'Megadeth',
                    image: NetworkImage('https://i.scdn.co/image/ab67616d0000b273ce8c55092dba3c0d2b0dc6f3'), 
                    title: 'Endgame',
                  ),
                  const SpotifyCard(
                    type: CardType.artist,
                    artist: 'Luis Miguel',
                    image: NetworkImage('https://i.scdn.co/image/ab6761610000e5eb6481401e529e475116702a29'), 
                  ),
                  SpotifyCard(
                    type: CardType.artist,
                    artist: 'Megadeth',
                    image: NetworkImage(megadeth), 
                  ),
                  const SpotifyCard(
                    type: CardType.album,
                    artist: 'Megadeth',
                    image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_664913-MLC31789978317_082019-O.jpg'), 
                    title: 'Rust in Peace',
                  ),
                ]
              ),

              SpotifyCardCarousel(
                carouselTitle: 'Recientemente escuchado',
                cardList: [
                  const SpotifyCard(
                    type: CardType.artist,
                    artist: 'Luis Miguel',
                    image: NetworkImage('https://i.scdn.co/image/ab6761610000e5eb6481401e529e475116702a29'), 
                  ),
                  SpotifyCard(
                    type: CardType.artist,
                    artist: 'Megadeth',
                    image: NetworkImage(megadeth), 
                  ),
                  const SpotifyCard(
                    type: CardType.album,
                    artist: 'Megadeth',
                    image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_664913-MLC31789978317_082019-O.jpg'), 
                    title: 'Rust in Peace',
                  ),
                ]
              ),

              const SpotifyCardCarousel(
                carouselTitle: 'Te podría interesar',
                cardList: [
                  SpotifyCard(
                    type: CardType.album,
                    artist: 'Metallica',
                    image: NetworkImage('https://i.scdn.co/image/ab67616d0000b273668e3aca3167e6e569a9aa20'), 
                    title: 'Master of Puppets',
                  ),
                  SpotifyCard(
                    type: CardType.album,
                    artist: 'Metallica',
                    image: NetworkImage('https://i.scdn.co/image/ab67616d0000b273668e3aca3167e6e569a9aa20'), 
                    title: 'Master of Puppets',
                  ),
                  SpotifyCard(
                    type: CardType.album,
                    artist: 'Metallica',
                    image: NetworkImage('https://i.scdn.co/image/ab67616d0000b273668e3aca3167e6e569a9aa20'), 
                    title: 'Master of Puppets',
                  ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}