import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz1/design2/widgets/program_widget.dart';
import 'package:quiz1/design2/widgets/workout_details.dart';

class WorkoutApp extends StatefulWidget {
  const WorkoutApp({super.key});

  @override
  State<WorkoutApp> createState() => _WorkoutAppState();
}

class _WorkoutAppState extends State<WorkoutApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset('assets/images/design2/logo2.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Jade',
                        style: GoogleFonts.inter(fontSize: 16),
                      ),
                      Text(
                        'Ready to workout?',
                        style: GoogleFonts.inter(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Spacer(),
                  badges.Badge(
                    position:
                        badges.BadgePosition.custom(bottom: 13, start: 13),
                    badgeAnimation: const badges.BadgeAnimation.slide(
                      animationDuration: Duration(seconds: 2),
                    ),
                    badgeStyle: const badges.BadgeStyle(
                      badgeColor: Color(0xFFF04438),
                    ),
                    child: const Icon(Icons.notifications_none_sharp),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 85,
                decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FC),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WorkoutDetails(
                          imagePath: 'assets/images/design2/heart.png',
                          title: 'Heart Rate',
                          num: '81',
                          mark: 'BPM'),
                      Container(
                        width: 1,
                        height: 55,
                        color: const Color(0xFFD9D9D9),
                      ),
                      WorkoutDetails(
                          imagePath: 'assets/images/design2/list.png',
                          title: 'To-do',
                          num: '32,5',
                          mark: '%'),
                      Container(
                        width: 1,
                        height: 55,
                        color: const Color(0xFFD9D9D9),
                      ),
                      WorkoutDetails(
                          imagePath: 'assets/images/design2/calo.png',
                          title: 'Calo',
                          num: '1000',
                          mark: 'Cal'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Workout Programs',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 16),
              TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                labelStyle: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF363F72),
                ),
                indicatorWeight: .5,
                unselectedLabelColor: const Color(0xFF667085),
                indicatorColor: const Color(0xFF363F72),
                tabs: const [
                  Tab(
                    text: 'All Type',
                  ),
                  Tab(
                    text: 'Full Body',
                  ),
                  Tab(
                    text: 'Upper',
                  ),
                  Tab(
                    text: 'Lower',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ProgramWidget(
                  imagePath: 'assets/images/design2/girl1.png',
                  dayNum: '7 days',
                  programDec: 'Improve mental focus.',
                  programName: 'Morning Yoga'),
              const SizedBox(height: 10),
              ProgramWidget(
                  imagePath: 'assets/images/design2/girl2.png',
                  dayNum: '3 days',
                  programDec: 'Improve posture and stability.',
                  programName: 'Plank Exercise'),
              const SizedBox(height: 10),
              ProgramWidget(
                  imagePath: 'assets/images/design2/girl2.png',
                  dayNum: '3 days',
                  programDec: 'Improve posture and stability.',
                  programName: 'Plank Exercise'),
              const SizedBox(height: 10),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            iconSize: 30,
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
            selectedItemColor: const Color(0xFF363F72),
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: buildDotIndicator(0, 'assets/images/design2/home.png'),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: buildDotIndicator(
                    1, 'assets/images/design2/navigation-pointer.png'),
              ),
              BottomNavigationBarItem(
                label: '',
                icon:
                    buildDotIndicator(2, 'assets/images/design2/bar-chart.png'),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: buildDotIndicator(3, 'assets/images/design2/person.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDotIndicator(
    int pageIndex,
    icon,
  ) {
    final bool isSelected = pageIndex == currentIndex;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ImageIcon(AssetImage(icon)),
        if (isSelected)
          Positioned(
            top: 35,
            left: 12,
            child: Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF363F72), // Change color as needed
              ),
            ),
          ),
      ],
    );
  }
}
