import 'package:flutter/material.dart';
import 'package:sumang/models/menuItem.dart';

class MenuItems {
  static const List<MenuItem> itemsFirst =[
    itemProfile,
    itemLogin,
    itemSetings,
    itemCheckout,
    itemFavorite,
    itemHistory,
    itemEtc,
  ];
  static const itemProfile = MenuItem(
    text:'Xaysana KEODUANGDY',
    icon: Icons.person,
  );
  static const itemLogin = MenuItem(
    text:'ເຂົ້າສູ່ລະບົບ',
    icon: Icons.login,
  );
  static const itemSetings = MenuItem(
    text:'ຕັ້ງຄ່າ',
    icon: Icons.settings,
  );
  static const itemCheckout = MenuItem(
    text:'ກະຕ່າຂອງຂ້ອຍ',
    icon: Icons.shopping_cart_checkout,
  );
  static const itemFavorite = MenuItem(
    text:'ລາຍການທີ່ບັນທຶກໄວ້',
    icon: Icons.favorite,
  );
  static const itemHistory = MenuItem(
    text:'ປະຫວັດການສັ່ງຊື້',
    icon: Icons.history,
  );
  static const itemEtc = MenuItem(
    text:'ອື່ນໆ',
    icon: Icons.devices_other,
  );
}