// ignore_for_file: prefer_const_constructors

import 'package:classi_chat/colors.dart';
import 'package:flutter/material.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        
        decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            icon: Icon(Icons.search),
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            hintText: "Search",
            hintStyle: const TextStyle(fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  width: 0, style: BorderStyle.none, color: Colors.green),
            ),
            contentPadding: const EdgeInsets.all(10)),
      ),
    );
  }
}
