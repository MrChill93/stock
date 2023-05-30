import 'package:flutter/material.dart';

import '../../shared_ui/themes/colors.dart';

class AppDrawerButton extends StatelessWidget {
  final String? drawerTitle;
  final IconData? leadingIcon;
  final void Function()? onTap;
  const AppDrawerButton({
    Key? key,
    this.drawerTitle,
    this.leadingIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Text(
        (drawerTitle) ?? "",
        style: const TextStyle(color: Hcm23Colors.colorTextContent),
      ),
      leading: Icon(
        leadingIcon,
        color: Hcm23Colors.colorBrand.withOpacity(0.5),
      ),
      trailing: const Icon(
        Icons.navigate_next_rounded,
        color: Hcm23Colors.colorBrand,
      ),
      onTap: onTap,
    );
  }
}
