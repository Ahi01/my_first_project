import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/features/search/widgets/search_button.dart';
import 'package:my_first_project/features/search/widgets/search_rhymes_bottom_sheet.dart';
import '../../../ui/widgets/rhymery_liist_card.dart';
import '../../../ui/widgets/rhymery_history_card.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: const Text('Rhymer'),
          centerTitle: true,
          snap: true,
          floating: true,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: SearchButton(
              onTap: () => _ShowSearchModalBottomSheet(context),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              itemCount: 10,
              itemBuilder: (context, index) {
                final rgymes = List.generate(4, (index) => ('Рифма$index'));
                return RhymesHistoryCard(rgymes: rgymes);
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverList.builder(
          itemBuilder: (context, index) => const RhymeListCard(
            thyme: 'Рифма',
          ),
          itemCount: 10,
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  void _ShowSearchModalBottomSheet(
    BuildContext context,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => const Padding(
        padding: EdgeInsets.only(top: 80),
        child: SearchRhymesBottomSheet(),
      ),
    );
  }
}
