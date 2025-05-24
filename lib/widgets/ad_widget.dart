import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdWidget extends GetView {
  const AdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainer,
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            'ADVERT',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                //color: Colors.white,
                ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(''),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(280, 200),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
