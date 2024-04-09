import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  State<CustomBottomBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<CustomBottomBar> {
  int position = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: MediaQuery.of(context).size.aspectRatio + 10,
      onTap: (value) {
        setState(() {
          
          position = value;
        });
      },
      backgroundColor: const Color.fromARGB(255, 1, 97, 205),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      unselectedItemColor: Colors.white,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        _buildNavItem(Icons.home, 'Home', 0, position),
        _buildNavItem(Icons.search, 'Search', 1, position),
        _buildNavItem(Icons.settings, 'Setting', 2, position),
      ],
      currentIndex: position,
      showUnselectedLabels: true,
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index, position) {
    return BottomNavigationBarItem(
      icon: IconTheme(
        data: IconThemeData(
            size: position == index ? 40 : 30,
            color: position == index ? Colors.black : Colors.white),
        child: position == index
            ? Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Icon(
                    icon,
                  ),
                ),
              )
            : Icon(icon),
      ),
      label: position == index ? '' : label,
    );
  }
}
