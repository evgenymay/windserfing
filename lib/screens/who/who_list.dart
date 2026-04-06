// lib/screens/who/who_screen.dart

import 'package:flutter/material.dart';
import '../../database/app_database.dart';
import 'who_field.dart';

class WhoScreen extends StatefulWidget {
  final AppDatabase db;

  const WhoScreen({super.key, required this.db});

  @override
  State<WhoScreen> createState() => _WhoScreenState();
}

class _WhoScreenState extends State<WhoScreen> {
  String _query = '';

  String _formatPhone(int phone) {
    final s = phone.toString();
    if (s.length != 11) return s;
    return '+${s[0]} (${s.substring(1, 4)}) ${s.substring(4, 7)} ${s.substring(7, 9)} ${s.substring(9, 11)}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 48),
          WhoField(
            onChanged: (value) => setState(() => _query = value),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: StreamBuilder<List<WhoTableData>>(
              stream: widget.db.searchWho(_query),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const SizedBox();
                final rows = snapshot.data!;
                if (rows.isEmpty) {
                  return const Center(
                    child: Text(
                      'ничего не найдено',
                      style: TextStyle(color: Color(0xFFAAAAAA)),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: rows.length,
                  itemBuilder: (context, index) {
                    final row = rows[index];
                    return ListTile(
                      title: Text(
                        row.name,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(_formatPhone(row.phone)),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}