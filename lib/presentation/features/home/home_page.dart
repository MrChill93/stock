// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:stock/presentation/features/home/assets/assets.dart';
import 'package:stock/presentation/features/home/cash%20transfer/cashTransfer.dart';
import 'package:stock/presentation/features/home/home_drawer.dart';
import 'package:stock/presentation/features/home/martket/martket.dart';
import 'package:stock/presentation/features/home/trading/trading.dart';
import 'package:stock/presentation/features/home/watchlist/watchlist.dart';

import '../../../shared/constants.dart';
import '../user/data/api/user_repository.dart';
import '../user/data/model/user_model.dart';

void main(List<String> args) {
  runApp(const homePageOrder());
}

class homePageOrder extends StatelessWidget {
  const homePageOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        iconTheme: const IconThemeData(color: Colors.purpleAccent),
        primaryTextTheme:
            const TextTheme(titleLarge: TextStyle(color: Colors.yellowAccent)),
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.cyan, displayColor: Colors.yellowAccent),
        fontFamily: 'Monotype Coursiva',
      ),
      home: const HomePage(
        id: '',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  static const nameRoute = 'HomePage';
  final String id;
  const HomePage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> _screen = [
    const MartketScreen(),
    const WatchlistScreen(),
    const TradingScreen(),
    const AssetsScreen(),
    const CashTransferScreen()
  ];
  UserModel? _user;

  @override
  void initState() {
    super.initState();
    getUserData(widget.id);
  }

  void getUserData(String uid) async {
    await UserRepo.getUserData(uid, updateUser);
  }

  void updateUser(UserModel user) {
    setState(() {
      _user = user;
      UserRepoX.shared.signedInUser = user;
      UserRepoX.shared.userId = widget.id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      key: _scaffoldKey,
      drawer: const HomeDrawer(),
      body: Column(
        children: [
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(
                    onPressed: (() {
                      _scaffoldKey.currentState?.openDrawer();
                    }),
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.yellow,
                    )),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search something",
                        hintStyle: const TextStyle(
                          color: Colors.yellow,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.yellow,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.yellow),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 0.0)),
                  ),
                ),
                IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.yellow,
                    )),
              ],
            ),
          )),
          _screen[_currentIndex]
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Market"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_sharp), label: "Watchlist"),
          BottomNavigationBarItem(
              icon: Icon(Icons.area_chart), label: "Trading"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: "Assets"),
          BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz), label: "Cash transfer")
        ],
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
