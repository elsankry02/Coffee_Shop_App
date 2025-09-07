import 'package:auto_route/auto_route.dart';
import '../../../../core/constants/color_manger.dart';
import '../../../../core/router/router.dart';
import '../../../data/models/card_model.dart';
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
        itemCount: cardModel(context).length,
        itemBuilder: (context, index) {
          //! object Model
          final model = cardModel(context)[index];
          return GestureDetector(
            onTap: () {
              //! Push To Details Page
              context.router.push(
                DetailsItemRoute(
                  cardModel: model,
                ),
              );
            },
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
                          //! image
                          child: Image.asset(
                            model.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: h * 0.010),
                    //! titel
                    Text(
                      model.titel,
                      style: textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                    //! subTitel
                    Text(
                      model.subTitel,
                      style: textTheme.labelMedium!
                          .copyWith(color: ColorManger.k7),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: h * 0.005),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //! price
                          Text("\$ ${model.mediumPrice}",
                              style: textTheme.titleMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                              )),
                          //! on tap
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsetsDirectional.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: ColorManger.kMaterialColor),
                              //! icon
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
