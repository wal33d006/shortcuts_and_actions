import 'package:flutter/material.dart';

class SlideThree extends StatelessWidget {
  const SlideThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Spacer(),
        const Text(
          'Spice up your Flutter apps with Shortcuts & Actions',
          style: TextStyle(fontSize: 96, fontWeight: FontWeight.bold),
        ),
        const Text(
          'A live code session showing how to embed shortcuts in your Flutter Desktop & Web Apps',
          style: TextStyle(fontSize: 32),
        ),
        const SizedBox(height: 64),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          width: 300,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
          ),
          child:
              const Text('Presenter', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32)),
        ),
        const SizedBox(height: 32),
        Row(
          children: [
            const CircleAvatar(backgroundImage: AssetImage('assets/profile.jpg'), minRadius: 60, maxRadius: 60),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Waleed Arshad', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                Text('Google Developer Expert -- Flutter', style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
                Text(
                  'Author of "Managing State in Flutter Pragmatically"',
                  style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic),
                ),
                Text(
                  'Flutter Developer at Tendermint Inc.',
                  style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic),
                ),
                Text('Community Lead at Flutter Karachi', style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic)),
              ],
            )
          ],
        ),
        const Spacer(),
        SizedBox(child: Align(child: Image.asset('assets/fv.png'), alignment: Alignment.bottomLeft), height: 100),
      ],
    );
  }
}
