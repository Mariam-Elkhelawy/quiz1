import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz1/design3/widgets/custom_text_form_field.dart';
import 'package:quiz1/design3/widgets/get_tips_widget.dart';
import 'package:quiz1/design3/widgets/see_all_widget.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  List<String> sliderImages = [
    'assets/images/design3/slider1.png',
    'assets/images/design3/slider2.png',
  ];

  int selectedIndex = 0;
  int currentIndex = 0;
  List<String> choices = [
    'Discover',
    'News',
    'Most Viewed',
    'Saved',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFFF9FAFB),
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/images/design3/logo3.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFormField(),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 8,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: choices.length,
                  itemBuilder: (context, index) {
                    return ChoiceChip(
                      showCheckmark: false,
                      padding: const EdgeInsets.all(8),
                      labelStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: selectedIndex == index
                            ? const Color(0xFF6941C6)
                            : const Color(0xFF667085),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: selectedIndex == index
                              ? const Color(0xFFD6BBFB)
                              : const Color(0xFFE4E7EC),
                        ),
                      ),
                      selectedColor: const Color(0xFFF4EBFF),
                      label: Text(choices[index]),
                      selected: selectedIndex == index,
                      onSelected: (value) {
                        selectedIndex = value ? index : 0;
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              SeeAllWidget(seeText: 'Hot topics'),
              CarouselSlider.builder(
                itemCount: 2,
                itemBuilder:
                    (BuildContext context, itemIndex, int pageViewIndex) {
                  return Image.asset(sliderImages[itemIndex]);
                },
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInBack,
                ),
              ),
              Text(
                'Get Tips',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF371B34),
                    fontSize: 18),
              ),
              const SizedBox(
                height: 16,
              ),
              const GetTipsWidget(),
              const SizedBox(
                height: 16,
              ),
              SeeAllWidget(seeText: 'Cycle Phases and Period'),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            showUnselectedLabels: true,
            selectedItemColor: const Color(0xFF7F56D9),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined), label: 'Today'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view_rounded), label: 'Insights'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline), label: 'Chat'),
            ],
          ),
        ),

      ),
    );
  }
}
