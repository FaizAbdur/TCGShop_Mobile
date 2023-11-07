import 'package:flutter/material.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color buttonColor; // Tambahkan warna untuk tombol

  ShopItem(this.name, this.icon, this.buttonColor);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.buttonColor,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<ShopItem> items = [
  ShopItem("Lihat item", Icons.checklist, Colors.blue), // Warna untuk "Lihat Item"
  ShopItem("Tambah item", Icons.add_shopping_cart, Colors.green), // Warna untuk "Tambah Item"
  ShopItem("Logout", Icons.logout, Colors.red), // Warna untuk "Logout"
];
