import 'package:flutter/material.dart';
import 'package:infinite_scroll_tab_view/infinite_scroll_tab_view.dart';

import '../martket/cover_warrants/cover_warrants.dart';
import '../martket/derivatives/derivatives.dart';
import '../martket/index/index.dart';
import '../martket/industry/industry.dart';
import '../martket/stock_martket/stock_martket.dart';

class TradingScreen extends StatefulWidget {
  const TradingScreen({super.key});

  @override
  State<TradingScreen> createState() => _TradingScreenState();
}

class _TradingScreenState extends State<TradingScreen> {
  final List<String> categories = [
    'Stock Market',
    'Industry',
    'Index',
    'Derivatives',
    'Cover Warrants',
    'ETF',
    'Top Stock'
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InfiniteScrollTabView(
          contentLength: categories.length,
          onTabTap: (index) {
            debugPrint('You tapped: $index ');
          },
          tabBuilder: (index, isSelected) => Text(categories[index],
              style: TextStyle(
                  color: isSelected ? Colors.pink : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          pageBuilder: (context, index, _) {
            if (index == 0) {
              return const StockMartket();
            }
            if (index == 1) {
              return const Industry();
            }
            if (index == 2) {
              return const Index();
            }
            if (index == 3) {
              return const Derivatives();
            }
            if (index == 4) {
              return const CoverWarrants();
            }
            return const Text('HAHA');
          }),
    );
  }
}
