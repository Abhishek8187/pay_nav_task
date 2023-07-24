import 'package:flutter/material.dart';
import 'package:pay_nav_task/constants/colors.dart';
import 'package:pay_nav_task/utils/general_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('images/Rectangle.png'),
                Positioned(
                    right: 0,
                    top: 15,
                    child: Image.asset('images/Ellipse2.png')),
                Image.asset('images/ellipse1.png'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      const Text(
                        'Leader Board',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Plus Jakarta Sans'),
                      ),
                      const Spacer(),
                      const Text(
                        'How it works?  ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans'),
                      ),
                      Image.asset('images/settings.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.09, horizontal: 20),
                  child: Container(
                    height: 0.05 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xFF1E0082),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GeneralContainer(
                          height: 30,
                          width: 97,
                          color: Colors.white,
                          borderRadius: 30,
                          text: 'This Week',
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontColor: Colors.black,
                        ),
                        GeneralContainer(
                          height: 30,
                          width: 97,
                          color: const Color(0xFF1E0082),
                          borderRadius: 30,
                          text: 'This Month',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontColor: Colors.white,
                        ),
                        GeneralContainer(
                          height: 30,
                          width: 97,
                          color: const Color(0xFF1E0082),
                          borderRadius: 30,
                          text: 'Last Month',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    bottom: 5,
                    child: Image.asset('images/Ellipse3.png')),
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.2, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RankHolders(
                        rank: const Text(
                          '2',
                          style: TextStyle(
                              color: Color(0xFFBBB2D9),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontFamily: 'Plus Jakarta Sans'),
                        ),
                        height: height * 0.11,
                        width: height * 0.11,
                        borderRadius: 80,
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xFF4B19C3),
                              Color(0xFF1F0293),
                              Color(0xFF1B0290)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        points: 7260,
                        name: 'Natasha Chowdary',
                        icon: Icon(
                          Icons.arrow_drop_up,
                          color: arrow_up,
                        ),
                      ),
                      RankHolders(
                        rank:  Image.asset('images/rank1.png'),
                        height: height * 0.17,
                        width: height * 0.17,
                        borderRadius: 100,
                        gradient:  LinearGradient(
                            colors: [
                              Color(0xFF2A12CCCC),
                              Color(0xFF1A018BCC),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        points: 8370,
                        name: 'Raja Reddy',
                        icon: SizedBox(),
                      ),

                      RankHolders(
                        rank: const Text(
                          '3',
                          style: TextStyle(
                              color: Color(0xFFBBB2D9),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              fontFamily: 'Plus Jakarta Sans'),
                        ),
                        height: height * 0.11,
                        width: height * 0.11,
                        borderRadius: 60,
                        gradient:  LinearGradient(
                            colors: [
                              Color(0xFF4F5BEC),
                              Color(0xFF3542DF00).withOpacity(0),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        points: 6260,
                        name: 'Samvibhan Singh',
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: arrow_down,
                        ),
                      ),

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RankHolders extends StatelessWidget {
  final Widget rank;
  final double height;
  final double width;
  final double borderRadius;
  final LinearGradient gradient;
  final int points;
  final String name;
  final Widget icon;

  RankHolders({
    required this.rank,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.gradient,
    required this.points,
    required this.name,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rank,
        icon,
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: gradient),
          child: Center(child: Placeholder()),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          points.toString(),
          style: TextStyle(
              color: Color(0xFF99B6FF),
              fontWeight: FontWeight.w300,
              fontSize: 25,
              fontFamily: 'Plus Jakarta Sans'),
        ),
        Text(
          name,
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w300,
              fontSize: 12,
              fontFamily: 'Plus Jakarta Sans'),
        ),
      ],
    );
  }
}
