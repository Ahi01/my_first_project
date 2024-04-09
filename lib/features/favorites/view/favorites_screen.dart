import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../ui/widgets/rhymery_liist_card.dart';

@RoutePage()
class FavoriutesScreen extends StatelessWidget {
  const FavoriutesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('Избранное'),
          centerTitle: true,
          snap: true,
          floating: true,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverList.builder(
          itemBuilder: (context, index) => const RhymeListCard(
            thyme: 'Рифма',
            isFavorites: true,
            sourceWord: 'Слово',
          ),
          itemCount: 20,
        ),
      ],
    );
  }
}
