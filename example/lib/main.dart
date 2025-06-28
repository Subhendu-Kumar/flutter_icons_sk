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
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SKIcon Demo'),
        // leading: SKIcon.antdf("account-book"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SKIcon.antdf("account-book").copyWith(width: 16, height: 16),
          ),
        ],
      ),
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
                // Custom size and color
                SKIcon.antdf(
                  "account-book",
                ).copyWith(width: 100, height: 100, color: Colors.red),
                const SizedBox(width: 16),
                SKIcon.antdf(
                  "account-book",
                ).copyWith(width: 48, height: 48, color: Colors.amber),
                const SizedBox(width: 16),
                // Different families same icon
                SKIcon.antdf(
                  "account-book",
                ).copyWith(width: 48, height: 48, color: Colors.pink),
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
                Text('SKIcon.fa6.home'),
                Text('SKIcon.heroicons.user'),
                Text('SKIcon.feather.heart'),
                Text('SKIcon.fa6brands.github'),
                const SizedBox(height: 16),
                Text('With customization:'),
                Text('SKIcon.fa6.heart.copyWith(width: 32, color: Colors.red)'),
                const SizedBox(height: 16),
                Text('Custom icons:'),
                Text('SKIcon.fa6.icon("house-chimney")'),
                Text('SKIcon.heroicons.icon("academic-cap")'),
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
                  label: const Text('Accept'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: SKIcon.antdf(
                    "account-book",
                  ).copyWith(width: 16, height: 16),
                  label: const Text('Cancel'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: SKIcon.antdf(
                    "account-book",
                  ).copyWith(width: 16, height: 16),
                  label: const Text('Download'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SKIcon.antdf("account-book").copyWith(color: Colors.white),
      ),
    );
  }
}
