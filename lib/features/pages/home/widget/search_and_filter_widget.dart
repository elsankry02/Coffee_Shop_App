import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:flutter/material.dart';

class SearchAndFilterWidget extends StatelessWidget {
  const SearchAndFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //! Search Container
            Container(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 25),
              height: 52,
              width: h * 0.350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(120, 17, 17, 17),
                    Color.fromARGB(120, 49, 49, 49),
                  ],
                ),
              ),
              child: Center(
                //! Search
                child: Row(
                  children: [
                    //! icon
                    Icon(Icons.search, size: h * 0.040, color: Colors.white),
                    SizedBox(width: w * 0.020),
                    Text(
                      'Search coffee',
                      style:
                          textTeme.titleSmall!.copyWith(color: ColorManger.k7),
                    )
                  ],
                ),
              ),
            ),
            //! Filter
            Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorManger.kMaterialColor),
              //! icon
              child: Center(
                child: Icon(Icons.filter_list_rounded, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
