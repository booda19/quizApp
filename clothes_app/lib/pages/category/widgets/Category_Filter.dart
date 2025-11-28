import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Colors.black12),
        // color: Colors.black12

      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("sort by"),
            SizedBox(width: 15,),
            Icon(Icons.keyboard_arrow_down_outlined),
            Spacer(),
            Icon(Icons.settings),
            Gap(10),
            Text('Filter'),
            Gap(10),
            Icon(Icons.grid_view_sharp),
            Gap(10),
            Icon(Icons.supervised_user_circle)
          ],
        ),
      ),
    )
    ;
  }
}
