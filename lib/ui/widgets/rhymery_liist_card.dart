import 'package:flutter/material.dart';

import 'base_container.dart';

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({
    super.key,
    this.isFavorites = false,
    required this.thyme,
    this.sourceWord,
  });
  final bool isFavorites;
  final String thyme;
  final String? sourceWord;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BaseContainer(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (sourceWord != null) ...[
                Text(
                  sourceWord!,
                  style: theme.textTheme.bodyLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: theme.hintColor.withOpacity(0.4),
                  ),
                )
              ],
              Text(
                thyme,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite,
                color: isFavorites
                    ? theme.primaryColor
                    : theme.hintColor.withOpacity(0.2)),
          )
        ],
      ),
    );
  }
}
