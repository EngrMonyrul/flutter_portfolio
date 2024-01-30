import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled6/controllers/constants/constants.dart';

class DonwloadButton extends StatelessWidget {
  const DonwloadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: TextButton(
        style: const ButtonStyle().copyWith(
            backgroundColor: const MaterialStatePropertyAll(secondaryColor)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Donwload CV'),
            const SizedBox(width: defaultPadding / 2),
            SvgPicture.asset('assets/icons/download.svg'),
          ],
        ),
      ),
    );
  }
}
