import 'package:flutter/material.dart';
import 'package:mental_health_mobile_app/features/home_page/components/feelings_button.dart';
import 'bottom_shit_container.dart';
import '../../../core/colors/nova_colors.dart';
import '../components/practices_ui.dart';
import '../components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSection(),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            FellingsButton(
              emoji: '😊',
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: const Color.fromARGB(255, 124, 124, 124),
                size: 18,
              ),
              onPressed: () => {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomShitcontainer();
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
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
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
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: NovaColors.cardBackground,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Practice',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 27, 87, 143),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        'Movies',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 96, 96, 96),
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Books',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 96, 96, 96),
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Tests',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 96, 96, 96),
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                SizedBox(height: 420, child: const PracticesUi()),
              ],
            ),
          ],
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
