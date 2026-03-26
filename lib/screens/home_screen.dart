import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'GharKhoj',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: AppColors.surface,
              child: const Icon(Icons.person_outline, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome back 👋',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'What are you looking for?',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textSub,
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  bool isWide = constraints.maxWidth > 600;
                  return isWide
                      ? Row(
                          children: [
                            Expanded(
                                child: _buildActionCard(
                              context,
                              title: 'Find a Room',
                              subtitle: 'Browse listings near you',
                              icon: Icons.search,
                              accentColor: AppColors.primary,
                            )),
                            const SizedBox(width: 16),
                            Expanded(
                                child: _buildActionCard(
                              context,
                              title: 'Post a Listing',
                              subtitle: 'List your room for rent',
                              icon: Icons.add_business_outlined,
                              accentColor: AppColors.secondary,
                            )),
                          ],
                        )
                      : Column(
                          children: [
                            Expanded(
                                child: _buildActionCard(
                              context,
                              title: 'Find a Room',
                              subtitle: 'Browse listings near you',
                              icon: Icons.search,
                              accentColor: AppColors.primary,
                            )),
                            const SizedBox(height: 16),
                            Expanded(
                                child: _buildActionCard(
                              context,
                              title: 'Post a Listing',
                              subtitle: 'List your room for rent',
                              icon: Icons.assignment_outlined,
                              accentColor: AppColors.secondary,
                            )),
                          ],
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color accentColor,
  }) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Coming soon!')),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border(
            left: BorderSide(color: accentColor, width: 6),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withValues(alpha: 0.1),
              blurRadius: 15,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 48, color: Colors.white),
            const SizedBox(height: 24),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: 20,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
