// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_note_local/src/feature/home/view/widget/note_item.dart';
import 'package:app_note_local/src/feature/home/view/widget/notes_listview.dart';
import 'package:app_note_local/src/utils/app_colors.dart';
import 'package:app_note_local/src/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notes",
          style: AppTextStyle.textStyle28,
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white.withAlpha(30),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 28,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}