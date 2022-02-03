import 'package:flutter/material.dart';

class SlideFIve extends StatelessWidget {
  const SlideFIve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Spacer(),
        Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                  'Why shortcuts?',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('IntelliJ Idea', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  Text('VSCode', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  Text('Adobe Photoshop', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  Text('All other daily used apps', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        SizedBox(child: Align(child: Image.asset('assets/fv.png'), alignment: Alignment.bottomLeft), height: 100),
      ],
    );
  }
}
