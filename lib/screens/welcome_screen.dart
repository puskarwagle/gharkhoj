import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // Background "Nepal Map" Placeholder
          Positioned(
            top: 100,
            left: -50,
            right: -50,
            child: Opacity(
              opacity: 0.1,
              child: Icon(
                Icons.map,
                size: 600,
                color: AppColors.primary.withOpacity(0.5),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Top Right Human Icon
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () => context.push('/login'),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.primary.withOpacity(0.3)),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withOpacity(0.2),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.person_outline,
                          color: AppColors.textBody,
                          size: 32,
                        ),
                      ),
                    ),
                  ),

                  // Hero Section - Centered in Viewport
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.6,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'GharKhoj',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                            fontSize: 72,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -2.0,
                            color: AppColors.textBody,
                            shadows: [
                              Shadow(
                                color: AppColors.primary.withOpacity(0.8),
                                blurRadius: 30,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Find flats, rooms on rent, book hotels, homestay, resorts and more.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textSub,
                                  height: 1.5,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Statistics Grid Title
                  Text(
                    'Our Presence in Nepal',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                  ),

                  const SizedBox(height: 24),

                  // Statistics Grid (6 Boxes)
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.1,
                    children: [
                      _buildStatBox(
                        context,
                        Icons.hotel_rounded,
                        '1200+',
                        'Hotels with us',
                      ),
                      _buildStatBox(
                        context,
                        Icons.meeting_room_rounded,
                        '5000+',
                        'Rooms for rent',
                      ),
                      _buildStatBox(
                        context,
                        Icons.apartment_rounded,
                        '3500+',
                        'Flats available',
                      ),
                      _buildStatBox(
                        context,
                        Icons.map_rounded,
                        '77',
                        'Districts covered',
                      ),
                      _buildStatBox(
                        context,
                        Icons.home_work_rounded,
                        '800+',
                        'Homestays',
                      ),
                      _buildStatBox(
                        context,
                        Icons.beach_access_rounded,
                        '450+',
                        'Luxury Resorts',
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatBox(
      BuildContext context, IconData icon, String value, String label) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.primary,
            size: 32,
          ),
          const SizedBox(height: 12),
          Text(
            value,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textBody,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 12,
                  color: AppColors.textSub,
                ),
          ),
        ],
      ),
    );
  }
}
