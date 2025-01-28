import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:flutter/material.dart';

class CategoryItemsWidget extends StatefulWidget {
  const CategoryItemsWidget({super.key});

  @override
  State<CategoryItemsWidget> createState() => _CategoryItemsWidgetState();
}

class _CategoryItemsWidgetState extends State<CategoryItemsWidget> {
  int currantIndex = 0;
  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;

    return SizedBox(
      height: 35,
      child: ListView.builder(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currantIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsetsDirectional.only(end: 20),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: currantIndex == index
                    ? ColorManger.kMaterialColor
                    : ColorManger.k8,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                //! Titel
                child: Text(
                  category[index],
                  style: textTeme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: currantIndex == index
                          ? Colors.white
                          : ColorManger.kBlack),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> category = [
  'All Coffee',
  'Machiato',
  'Latte',
  'Americano',
  'cappuccino'
];
