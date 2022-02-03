import 'package:flutter/material.dart';
import 'package:flutter_vikings/actions/clear_action.dart';
import 'package:flutter_vikings/actions/copy_action.dart';

class SlideNine extends StatefulWidget {
  const SlideNine({Key? key}) : super(key: key);

  @override
  State<SlideNine> createState() => _SlideNineState();
}

class _SlideNineState extends State<SlideNine> {
  late TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Actions(
      actions: <Type, Action<Intent>>{
        ClearIntent: ClearAction(controller),
        CopyIntent: CopyAction(controller),
      },
      child: Builder(builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.copy),
                  onPressed: Actions.handler<ClearIntent>(context, const ClearIntent()),
                ),
                const Spacer(),
              ],
            ),
            const Spacer(),
            SizedBox(child: Align(child: Image.asset('assets/fv.png'), alignment: Alignment.bottomLeft), height: 100),
          ],
        );
      }),
    );
  }
}
