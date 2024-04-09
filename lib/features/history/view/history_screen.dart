import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/ui/widgets/rhymery_history_card.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('История'),
          centerTitle: true,
          snap: true,
          floating: true,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.3,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const RhymesHistoryCard(
                  rgymes: ['cscssdsd, sdsdsds,sdsdsdsds,dsdsdsdsdfadfafahhhbhgjgvgvgvgvgvgvjgvjgvgjvjgvvgvjgvg'],
                );
              },
              childCount: 20,
            ),
          ),
        )
      ],
    );
  }
}
