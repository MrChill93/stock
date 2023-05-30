import 'package:flutter/material.dart';

import '../../shared_ui/themes/colors.dart';
import '../../shared_ui/themes/text_styles.dart';
import '../user/data/model/user_model.dart';

class HomeDrawer extends StatefulWidget {
  final String? drawerUsername;
  final String? drawerAvatarLink;
  final UserModel? user;
  // late int? pageNumber;
  // final String? pageName;
  const HomeDrawer({
    Key? key,
    this.drawerUsername,
    this.drawerAvatarLink,
    this.user,
    // this.pageNumber,
  }) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 131, 177, 214)),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    (widget.drawerUsername) ?? "",
                    style: tStyle
                        .w500()
                        .display20()
                        .copyWith(color: Hcm23Colors.colorBrand),
                  ),
                ],
              ),
            ),
          ),
          _buidDrawerItem(Icons.attach_money, 'Price Board', 0),
          _buidDrawerItem(Icons.star, 'Watch List', 1),
          _buidDrawerItem(Icons.business, 'Top Stocks', 2),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
            color: Colors.black,
          ),
          _buidDrawerItem(Icons.notifications, 'Notifications', 3),
          _buidDrawerItem(Icons.bar_chart, 'Equities Trading', 4),
          _buidDrawerItem(Icons.timeline, 'Derivatives Trading', 5),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
            color: Colors.black,
          ),
          _buidDrawerItem(Icons.shopping_cart, 'Right Trading', 6),
          _buidDrawerItem(Icons.person_outline, 'S-products', 7),
          _buidDrawerItem(Icons.account_balance_wallet, 'Cash transaction', 8),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
            color: Colors.black,
          ),
          _buidDrawerItem(Icons.account_balance, 'Assets Management', 9),
          _buidDrawerItem(Icons.person, 'Account Management', 10),
          _buidDrawerItem(Icons.add_box, 'Abc Plus', 11),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
            color: Colors.black,
          ),
          _buidDrawerItem(Icons.settings, 'Settings', 12),
          _buidDrawerItem(Icons.contact_mail, 'Contact', 13),
        ],
      ),
    );
  }

  Widget _buidDrawerItem(IconData icon, String title, int index) {
    return InkWell(
      onTap: () => {
        setState(() {
          _selectedIndex = index;
        })
      },
      child: Container(
        color: index == _selectedIndex ? Colors.green[100] : null,
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
