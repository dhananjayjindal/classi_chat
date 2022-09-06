// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:classi_chat/colors.dart';
import 'package:classi_chat/widgets/contact_list.dart';
import 'package:classi_chat/widgets/web_chat_appbar.dart';
import 'package:classi_chat/widgets/web_profile_bar.dart';
import 'package:classi_chat/widgets/web_search_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList()
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                WebChatAppBar(),
                Expanded(child: ChatList()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: dividerColor),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 15,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: 'Type a message',
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width:0,
                                  style:BorderStyle.none,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 15)
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
