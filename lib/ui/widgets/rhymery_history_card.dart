import 'package:flutter/material.dart';
import 'package:my_first_project/ui/widgets/widgets.dart';

class RhymesHistoryCard extends StatelessWidget {
  const RhymesHistoryCard({
    super.key,
    required this.rgymes,
  });

  final List<String> rgymes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      padding: const EdgeInsets.all(16),
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Слово',
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Flexible(
            child: Text(
              rgymes.asMap().entries.map(
                (e) {
                  final sb = StringBuffer();
                  sb.write(e.value);
                  if (e.key != rgymes.length - 1) {
                    sb.write(',  ');
                  }
                  return sb.toString();
                },
              ).join(),
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 13,
                color: theme.hintColor.withOpacity(0.4),
              ),
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
  }
}
