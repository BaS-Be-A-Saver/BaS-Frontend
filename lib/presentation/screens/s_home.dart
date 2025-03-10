import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_icon.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:beasavor/presentation/screens/mypage_screen_n.dart';
import 'package:beasavor/presentation/screens/shower_screen.dart';
import 'package:beasavor/presentation/screens/water_screen.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    ShowerScreen(),
    WaterScreen(),
    MyPageScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.blue50,
        leadingWidth: 80,
        actionsIconTheme: IconThemeData(color: AppColors.blue50),
        leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Image.asset(AppImages.logo),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            
            
          ),
          
        ],
      ),
      body: Center(
        child: Text(
          'HomeScreen',
          style:
              AppFonts.bold.copyWith(fontSize: 40, color: AppColors.blue100),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shower), 
            label: '샤워부스'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'BAS'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'MY'
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.blue100,
        onTap: _onItemTapped,
      ),
    );
  }
  @override
  void initState() {
    //해당 클래스가 호출되었을떄
    super.initState();
 
  }
 
  @override
  void dispose() {
    super.dispose();
  }
}