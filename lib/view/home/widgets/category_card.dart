import 'package:flutter/material.dart';

import '../../../data/category_data.dart';
import '../../../utils/colors.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ListView.builder(
          itemCount: categoryData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  width: 125,
                  decoration: BoxDecoration(
                      color: categoryData[index].active
                          ? kprimaryClr
                          : klightGrayclr,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        categoryData[index].icon,
                        color:
                            categoryData[index].active ? kwhiteclr : kblackclr,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        categoryData[index].title,
                        style: TextStyle(
                            color: categoryData[index].active
                                ? kwhiteclr
                                : kblackclr,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
