import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeedView extends StatelessWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: MasonryGridView.builder(
        itemCount: 16,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(borderRadius: BorderRadius.circular(6), child: Image.asset('assets/images/image${index + 1}.jpg')),
            )),
      ),
    );
  }
}
