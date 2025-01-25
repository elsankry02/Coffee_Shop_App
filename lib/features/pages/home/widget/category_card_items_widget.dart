import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/features/data/models/card_model.dart';
import 'package:flutter/material.dart';

class CategoryCardItemsWidget extends StatelessWidget {
  const CategoryCardItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            mainAxisExtent: 270),
        itemCount: cardModel.length,
        itemBuilder: (context, index) {
          //! object Model
          final model = cardModel[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(),
              child: Card(
                child: Padding(
                  padding: const EdgeInsetsDirectional.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              cardModel[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: h * 0.010),
                      Text(
                        model.titel,
                        style: textTheme.titleMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        model.subTitel,
                        style: textTheme.labelMedium!
                            .copyWith(color: ColorManger.k7),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
