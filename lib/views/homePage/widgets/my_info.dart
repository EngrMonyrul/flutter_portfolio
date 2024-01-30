import 'package:flutter/material.dart';

import '../../../controllers/constants/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/photo.jpg'),
            ),
            const Spacer(),
            Text(
              'Monirul Islam',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              'Software Engineer At Prime Tech Solutions Ltd\nMobile, Web, TV, Linux, Windows Application Development',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
