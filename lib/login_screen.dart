import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isAdminActive = false;
  bool isUserActive = false;

  void selectedAdmin() {
    if (isUserActive == false) {
      if (isAdminActive == false) {
        isAdminActive = true;
      } else {
        isAdminActive = false;
      }
    }
    setState(() {});
  }

  void selectedUser() {
    if (isAdminActive == false) {
      if (isUserActive == false) {
        isUserActive = true;
      } else {
        isUserActive = false;
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double iconSize = 40;
    double fontSize = 16;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                key: const Key('ic_admin'),
                onPressed: () {
                  selectedAdmin();
                },
                icon: Column(
                  children: [
                    Icon(
                      Icons.admin_panel_settings_outlined,
                      color: isAdminActive ? Colors.green : Colors.grey,
                      size: iconSize,
                    ),
                    Text(
                      'Admin',
                      style: TextStyle(
                        fontSize: fontSize,
                        color: isAdminActive ? Colors.green : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                key: const Key('ic_user'),
                onPressed: () {
                  selectedUser();
                },
                icon: Column(
                  children: [
                    Icon(
                      Icons.person_outlined,
                      color: isUserActive ? Colors.green : Colors.grey,
                      size: iconSize,
                    ),
                    Text(
                      'User',
                      style: TextStyle(
                        fontSize: fontSize,
                        color: isUserActive ? Colors.green : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.1),
          ElevatedButton(
            key: const Key('btn_login'),
            onPressed: () {
              if (isAdminActive || isUserActive) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  final userType = isAdminActive ? 'Admin' : 'User';

                  return DashBoardScreen(
                    userType: userType,
                  );
                }));
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Text(
                'login',
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
