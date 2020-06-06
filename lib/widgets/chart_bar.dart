import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String day;
  final double spendingAmount;
  final double spendingAmountPCT;
  ChartBar(this.day, this.spendingAmount, this.spendingAmountPCT);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            spendingAmount.toStringAsFixed(0),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              FractionallySizedBox(
                heightFactor: day == 'F' ? 0.8 : 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(day),
      ],
    );
  }
}
