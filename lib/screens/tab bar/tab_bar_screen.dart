import 'package:amlak_app/screens/login/login_screen.dart';
import 'package:amlak_app/screens/sign_up/sign_up_scree.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: SvgPicture.asset(
                'assets/images/login_img.svg',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ButtonsTabBar(
                height: 50,
                //center: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                // Customize the appearance and behavior of the tab bar
                backgroundColor: Colors.blue,
                labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SM',
                    fontSize: 18),
                unselectedLabelStyle: const TextStyle(
                  fontFamily: 'SM',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                // Add your tabs here
                tabs: const [
                  Tab(
                    text: 'ورود',
                  ),
                  Tab(
                    text: 'ثبت نام',
                  )
                ]),
            Expanded(
              child: TabBarView(
                children: [
                  LoginScreen(),
                  SignInScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
