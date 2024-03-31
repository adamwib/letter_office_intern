import 'package:flutter/material.dart';
import 'package:surat_app/administrator/view/home_administrator.dart';
import 'package:surat_app/administrator/view/profile/profile_administrator.dart';

class MenuBottomBar extends StatefulWidget {
  const MenuBottomBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuBottomBarState createState() => _MenuBottomBarState();
}

class _MenuBottomBarState extends State<MenuBottomBar> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            buildItemAppbar(Icons.chat, 0),
            buildItemAppbar(Icons.home, 1),
            buildItemAppbar(Icons.person, 2),
          ],
        ),
      ),
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: TickerMode(
              enabled: _selectedIndex == 0,
              child: const HomeAdministrator(),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: TickerMode(
              enabled: _selectedIndex == 1,
              child: const ProfileAdministrator(),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: TickerMode(
              enabled: _selectedIndex == 2,
              child: const ProfileAdministrator(),
            ),
          )
        ],
      ),
    );
  }

  Widget buildItemAppbar(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 3,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.orange[300])
            : const BoxDecoration(),

        // color: index == _selectedItemIndex ? Colors.green : Colors.white),
        child: Icon(icon,
            size: index == _selectedIndex ? 36 : 24,
            color: index == _selectedIndex ? Colors.white : Colors.grey[500]),
      ),
    );
  }
}
