import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingSpinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: const LoadingIndicator(
              indicatorType: Indicator.lineSpinFadeLoader,
            ),
            width: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: const Text(
              "Loading",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
