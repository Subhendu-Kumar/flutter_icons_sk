// File: example/lib/main.dart //
// This file is part of the flutter_icons_sk package example.

import 'package:flutter/material.dart';
import 'package:flutter_icons_sk/flutter_icons_sk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SKIcon Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SKIcon Demo')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Customized Icons:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                SKIcon.antdf(
                  "account-book",
                ).copyWith(width: 48, height: 48, color: Colors.pink),
                SKIcon.antdo(
                  "aim",
                ).copyWith(width: 48, height: 48, color: Colors.blue),
                SKIcon.antdtt(
                  "alert",
                ).copyWith(width: 48, height: 48, color: Colors.green),
                SKIcon.bootstrap(
                  "0-circle-fill",
                ).copyWith(width: 48, height: 48, color: Colors.yellow),
                SKIcon.boxl(
                  "bxl-aws",
                ).copyWith(width: 48, height: 48, color: Colors.red),
                SKIcon.boxr(
                  "bx-adjust",
                ).copyWith(width: 48, height: 48, color: Colors.orange),
                SKIcon.boxs(
                  "bxs-alarm",
                ).copyWith(width: 48, height: 48, color: Colors.purple),
                SKIcon.cssgg(
                  "abstract",
                ).copyWith(width: 48, height: 48, color: Colors.cyan),
                SKIcon.feather(
                  "activity",
                ).copyWith(width: 48, height: 48, color: Colors.amber),
                SKIcon.flatc("about").copyWith(width: 48, height: 48),
                SKIcon.fontab("adn").copyWith(width: 48, height: 48),
                SKIcon.fontar("bell").copyWith(width: 48, height: 48),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Usage Examples:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SKIcon.antdf("account-book")'),
                Text('SKIcon.antdo("aim")'),
                Text('SKIcon.flatc("about")'),
                const SizedBox(height: 20),
                Text('With customization:'),
                Text('SKIcon.fontar("bell").copyWith(width: 48, height: 48)'),
                const SizedBox(height: 20),
                Text('Custom icons:'),
                Text('SKIcon.custom("icon_url")'),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'In Buttons:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: SKIcon.antdf(
                    "account-book",
                  ).copyWith(width: 16, height: 16),
                  label: const Text('Account'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: SKIcon.antdo("aim").copyWith(width: 16, height: 16),
                  label: const Text('Aim'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: SKIcon.flatc("about").copyWith(width: 16, height: 16),
                  label: const Text('About'),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text("** All the informations are updated very soon...."),
          ],
        ),
      ),
    );
  }
}
