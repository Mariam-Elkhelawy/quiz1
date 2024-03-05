import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz1/design1/widgets/exercise_widget.dart';
import 'package:quiz1/design1/widgets/feature_widget.dart';
import 'package:quiz1/design1/widgets/feeling_widget.dart';
import 'package:quiz1/design1/widgets/see_more_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoodyMentalHealthApp extends StatefulWidget {
 const MoodyMentalHealthApp({super.key});

  @override
  State<MoodyMentalHealthApp> createState() => _MoodyMentalHealthAppState();
}

class _MoodyMentalHealthAppState extends State<MoodyMentalHealthApp> {
  int selectedIndex = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                'assets/images/design1/logo1.png',
                width: 100,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: badges.Badge(
                position: badges.BadgePosition.custom(bottom: 13, start: 13),
                badgeAnimation: const badges.BadgeAnimation.slide(
                  animationDuration: Duration(seconds: 2),
                ),
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: Color(0xFFF04438),
                ),
                child: const Icon(Icons.notifications_none_sharp),
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(height: 100,
          child: BottomNavigationBar(iconSize: 25,
            type: BottomNavigationBarType.fixed,
            elevation: 25,
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: const Color(0xFF667085),
            selectedItemColor: const Color(0xFF027A48),
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: buildDotIndicator(0, Icons.home_filled),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: buildDotIndicator(1, Icons.grid_view),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: buildDotIndicator(2, Icons.calendar_today_outlined),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: buildDotIndicator(3, Icons.person),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello,',
                    style: GoogleFonts.inter(
                        color: const Color(0xFF371B34), fontSize: 20),
                  ),
                  Text(
                    'Sara Rose',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF371B34),
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'How are you feeling today ?',
                style:
                    GoogleFonts.inter(color: const Color(0xFF371B34), fontSize: 16),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FeelingWidget(
                        imagePath: 'assets/images/design1/love.png',
                        feelingName: 'Love'),
                    FeelingWidget(
                        imagePath: 'assets/images/design1/cool.png',
                        feelingName: 'Cool'),
                    FeelingWidget(
                        imagePath: 'assets/images/design1/happy.png',
                        feelingName: 'Happy'),
                    FeelingWidget(
                        imagePath: 'assets/images/design1/sad.png',
                        feelingName: 'Sad'),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              SeeMoreWidget(seeText: 'Feature'),
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder:
                    (BuildContext context, itemIndex, int pageViewIndex) {
                  return const FeatureWidget();
                },
                options: CarouselOptions(
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    selectedIndex = index;
                    setState(() {});
                  },
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInBack,
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: selectedIndex,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xFF98A2B3),
                    spacing: 6,
                    dotHeight: 7,
                    dotWidth: 7,
                    dotColor: Color(0xFFD9D9D9),
                    type: WormType.thinUnderground,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              SeeMoreWidget(seeText: 'Exercise'),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    ExercisesWidget(
                        color: const Color(0xFFF9F5FF),
                        imagePath: 'assets/images/design1/Relaxation.png',
                        exerciseName: 'Relaxation'),
                    const Spacer(),
                    ExercisesWidget(
                        color: const Color(0xFFFDF2FA),
                        imagePath: 'assets/images/design1/Meditation.png',
                        exerciseName: 'Meditation'),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    ExercisesWidget(
                        color: const Color(0xFFFFFAF5),
                        imagePath: 'assets/images/design1/Beathing.png',
                        exerciseName: 'Beathing'),
                    const Spacer(),
                    ExercisesWidget(
                        color: const Color(0xFFF0F9FF),
                        imagePath: 'assets/images/design1/yoga.png',
                        exerciseName: 'Yoga'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDotIndicator(int pageIndex, IconData icon) {
    final bool isSelected = pageIndex == currentIndex;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(icon),
        if (isSelected)
          Positioned(
            top: 35,
            left: 10,
            child: Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF027A48), // Change color as needed
              ),
            ),
          ),
      ],
    );
  }
}
