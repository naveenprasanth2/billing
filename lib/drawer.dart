import 'package:billing/pages/contacts_page.dart';
import 'package:flutter/material.dart';
import 'package:billing/saved_invoices_page.dart';

class InvoiceDrawer extends StatelessWidget {
  const InvoiceDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.account_circle,
                    size: 48,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Ramasamy Textiles',
                  style: TextStyle(
                    color: Colors.white.withValues(),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.receipt_long,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: const Text('Bill'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SavedInvoicesPage()),
              );
            },
          ),

          ListTile(
            leading: Icon(
              Icons.contacts,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: const Text('Contacts'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ContactsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
