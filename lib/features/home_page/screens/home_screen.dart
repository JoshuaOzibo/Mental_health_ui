import 'package:flutter/material.dart';
import 'package:mental_health_mobile_app/features/home_page/components/feelings_button.dart';
import 'package:mental_health_mobile_app/features/recommended_mood_page/screens/recommended_mood_page.dart';
import '../../../core/colors/nova_colors.dart';
import '../components/practices_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NovaColors.backgroundLight,
      appBar: AppBar(
        leadingWidth: 300,
        toolbarHeight: 80,
        backgroundColor: NovaColors.backgroundLight,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, right: 8),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: NovaColors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, color: NovaColors.iconGray),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Einstein',
                  style: TextStyle(color: NovaColors.primaryText, fontSize: 12),
                ),
                Text(
                  'Let\'s lift your mood',
                  style: TextStyle(color: NovaColors.primaryText, fontSize: 12),
                ),
              ],
            ),
          ],
        ),

        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            // padding: EdgeInsets.symmetric(horizontal: 13, vertical: 18),
            width: 55,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: NovaColors.iconGray),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(Icons.notifications_none_outlined, size: 25),
                  Positioned(
                    right: 1,
                    top: -3,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 227, 15, 0),
                        shape: BoxShape.circle,
                      ),

                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              FellingsButton(
                emoji: '😊',
                              trailing: Icon(Icons.arrow_forward_ios_outlined, color: NovaColors.iconGray, size: 20),
                onPressed: () => {
                  showBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 400,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 30,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'How are you feeling today?',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        width: 2,
                                        color: const Color.fromARGB(
                                          255,
                                          208,
                                          208,
                                          208,
                                        ),
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: () => {Navigator.pop(context)},
                                      child: Center(
                                        child: Text(
                                          'X',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Spacer(),
                              SizedBox(
                                width: double.infinity,
                                height: 60,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      0,
                                      72,
                                      150,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          RecommendedMoodPage(),
                                    ),
                                  ),
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                },
                text: 'How are you feeling today?',
              ),

              SizedBox(height: 35),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start with one of these',
                    style: TextStyle(
                      color: NovaColors.primaryText,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      left: 6,
                      right: 20,
                      top: 6,
                      bottom: 6,
                    ),
                    decoration: BoxDecoration(
                      color: NovaColors.iconGray.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            color: NovaColors.cardBackground,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Practice',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 43, 104, 161),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Movies',
                          style: TextStyle(
                            color: NovaColors.subtleText,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Books',
                          style: TextStyle(
                            color: NovaColors.subtleText,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Tests',
                          style: TextStyle(
                            color: NovaColors.subtleText,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  PracticesUi(),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          backgroundColor: NovaColors.cardBackground,
          selectedItemColor: NovaColors.accentBlue,
          unselectedItemColor: NovaColors.tabGray,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.my_location),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
              label: 'Help',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
