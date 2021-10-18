import 'package:animated_flip_card/animated_flip_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 40),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Special Card',
                style: TextStyle(
                  fontFamily: 'MysteryQuest',
                  color: Colors.amber,
                  fontSize: 36,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: AnimatedFlipCard(
                  front: Image.asset(
                    'assets/images/front.png',
                    width: 250,
                    fit: BoxFit.contain,
                  ),
                  back: Image.asset(
                    'assets/images/back.png',
                    width: 250,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Center(
                child: Text(
                  'Card details',
                  style: TextStyle(
                    fontFamily: 'MysteryQuest',
                    color: Colors.amber,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 40, left: 40, bottom: 40),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus iaculis volutpat consectetur euismod sollicitudin pulvinar est, leo risus. Et mi in orci ut. Hendrerit magna laoreet egestas ornare justo. Tristique semper eget quis feugiat metus.',
                  style: TextStyle(
                    fontFamily: 'MysteryQuest',
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
