import 'package:flutter/material.dart';
import 'package:my_first_project/ui/widgets/base_container.dart';

class SettingsListCard extends StatelessWidget {
  const SettingsListCard({
    super.key,
    required this.title,
    required this.value,
    this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
      child: BaseContainer(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(fontSize: 18),
            ),
            Switch(
              inactiveTrackColor: Colors.white,
              activeColor: Theme.of(context).primaryColor,
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
