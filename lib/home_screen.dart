import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Theme Mode'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("Show dialog alert using GetX"),
              onTap: () {
                Get.defaultDialog(
                  title: "GetX Dialog",
                  contentPadding: const EdgeInsets.all(20),
                  titlePadding: const EdgeInsets.only(top: 20),
                  middleText: "This is a GetX Dialog",
                  confirm: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("OK"),
                  ),
                  cancel: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("Cancel"),
                  ),
                );
              },
            ),
          ),
          //  Theme Mode Switch
          Card(
            child: ListTile(
              title: const Text("Theme Mode Switch"),
              subtitle: const Text("Switch between Light and Dark Mode"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Light Mode
                        ListTile(
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.light);
                            Get.back();
                          },
                          leading: const Icon(Icons.light_mode,
                              color: Colors.yellow),
                          title: Text(
                            "Light Mode",
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                        // Dark Mode
                        ListTile(
                          onTap: () {
                            Get.changeThemeMode(ThemeMode.dark);
                            Get.back();
                          },
                          leading: Icon(Icons.dark_mode,
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black),
                          title: Text(
                            "Dark Mode",
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black), // Dynamic text color
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
