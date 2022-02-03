import 'package:flutter/material.dart';

class SlideEight extends StatelessWidget {
  const SlideEight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image.asset('assets/fv.png')),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            width: 400,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(60),
              ),
            ),
            child: const Text(
              'LIVE CODE!',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
