import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/product_data.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'widgets/category_card.dart';
import 'widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            const CustomAppBar(),
            TextField(
              decoration: InputDecoration(
                  fillColor: klightGrayclr,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'Search Here...',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: kprimaryClr,
                  )),
            ),
            const categoryCard(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: AlignedGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: klightGrayclr,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              productData[index].image,
                              height: 200,
                              width: double.maxFinite,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                productData[index].category,
                                style: const TextStyle(
                                  color: ksecondaryclr,
                                ),
                              ),
                              const Icon(
                                Icons.shopping_basket_outlined,
                                color: ksecondaryclr,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            productData[index].title,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            productData[index].desc,
                            style:
                                const TextStyle(fontSize: 11, color: kgrayclr),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            productData[index].price,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: kgrayclr,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
