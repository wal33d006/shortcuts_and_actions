import 'package:flutter/material.dart';

class SlideTwo extends StatelessWidget {
  const SlideTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              children: [
                const Text('Give ', style: TextStyle(fontSize: 128)),
                Image.asset('assets/ctrl.png'),
                const Text('to your Flutter apps', style: TextStyle(fontSize: 128))
              ],
            ),
          ),
        ),
        SizedBox(child: Align(child: Image.asset('assets/fv.png'), alignment: Alignment.bottomLeft), height: 100),
      ],
    );
  }
}
