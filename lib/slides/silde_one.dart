import 'package:flutter/material.dart';

class SlideOne extends StatelessWidget {
  const SlideOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset('assets/fv.png')),
        Column(
          children: [
            InkWell(
              onTap: () {},
              child: const Text(''),
            ),
          ],
        ),
      ],
    );
  }
}
