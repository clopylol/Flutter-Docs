import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarBottomDrawer extends StatefulWidget {
  AppBarBottomDrawer({Key key}) : super(key: key);

  @override
  _AppBarBottomDrawerState createState() => _AppBarBottomDrawerState();
}

class _AppBarBottomDrawerState extends State<AppBarBottomDrawer> {
// DefaultTabController ve Driver Kullanımı.
// Tabs için 'package:flutter/widgets.dart'; eklemeyi unutma

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarBottom-Drawer"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.car_rental),
              ),
              Tab(
                icon: Icon(Icons.card_travel_outlined),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.car_rental),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.home),
            ),
          ],
          //leading: Icon(Icons.ac_unit_outlined),
        ),

        //--------------------------------------Drawer Kullanımı--------------------------------------
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Hokkabaz Salih"),
                accountEmail: Text("salihacur1@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/35336217?s=460&u=da16c4a1ee3850237dc738ff3709aebea16e6bb7&v=4"),
                ),
              ),
              TextButton.icon(
                icon: Icon(Icons.card_membership),
                label: Text("Profile"),
                onPressed: () {},
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text("Profile"),
                onPressed: () {},
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              FlatButton.icon(
                icon: Icon(Icons.add_business_rounded),
                label: Text("Profile"),
                onPressed: () {},
              ),
            ],
          ),
        ),

        //--------------------------------------BottomNavigator--------------------------------------
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Bişey"),
            BottomNavigationBarItem(icon: Icon(Icons.add_call), label: "Başka"),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),

            //Text
            child: Text(
                "Bin atlı, akınlarda çocuklar gibi şendik; Bin atlı o gün dev gibi bir orduyu yendik!"),
          ),
        ),
      ),
    );
  }
}
