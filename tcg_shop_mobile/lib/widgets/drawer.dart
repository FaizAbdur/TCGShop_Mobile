// drawer.dart
import 'package:flutter/material.dart';
import 'package:tcg_shop_mobile/screens/list_Item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Halaman Utama'),
            onTap: () {
              // Navigate to the main page
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Tambah Item'),
            onTap: () {
              // Navigate to the add item page
              Navigator.pushNamed(context, '/add_item');
            },
          ),
          ListTile(
            leading: const Icon(Icons.credit_card),
            title: const Text('Lihat Item'),
            onTap: () {
              /*
              TODO: Buatlah routing ke ShopFormPage di sini,
              setelah halaman ShopFormPage sudah dibuat.
              */
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
