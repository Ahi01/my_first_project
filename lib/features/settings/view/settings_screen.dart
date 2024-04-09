import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/features/settings/view/widgets/settings_toggle_card.dart';
import 'package:my_first_project/ui/ui.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('Настройки'),
          centerTitle: true,
          snap: true,
          floating: true,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SettingsListCard(
            title: 'Темная тема',
            value: false,
            onChanged: (value) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsListCard(
            title: ' Уведомление',
            value: false,
            onChanged: (value) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsListCard(
            title: 'Разрешить аналитику',
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
            child: SettingsActionCard(
              title: 'Очистить историю',
              iconData: Icons.delete,
              iconColor: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
            child: const SettingsActionCard(
              title: 'Поддрежка',
              iconData: Icons.help,
              // iconColor: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard({
    super.key,
    required this.title,
    required this.iconData,
    this.iconColor,
    this.onTap,
  });
  final String title;
  final IconData iconData;
  final Color? iconColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BaseContainer(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: theme.textTheme.titleMedium?.copyWith(fontSize: 18),
          ),
          Icon(
            iconData,
            size: 32,
            color: iconColor ?? theme.hintColor.withOpacity(0.3),
          )
        ],
      ),
    );
  }
}
