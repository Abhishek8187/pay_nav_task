import 'package:flutter/material.dart';
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
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
