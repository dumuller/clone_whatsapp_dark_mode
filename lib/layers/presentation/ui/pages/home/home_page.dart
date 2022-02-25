import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:whatsapp/layers/presentation/controllers/whatsapp_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final whastappController = GetIt.instance.get<WhatsappController>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp", style: TextStyle(color: Color(0xFF748186)),),
          backgroundColor: const Color(0xFF1F2C31),
          actions: const [
            Icon(Icons.search_sharp, color: Color(0xFF748186),),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert, color: Color(0xFF748186),),
          ],
          bottom: const TabBar(
            indicatorColor: Color(0xFF029B86),
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 30),
            labelColor: Color(0xFF029B86),
            unselectedLabelColor: Color(0xFF98A2A7),
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(text: "CHATS",),
              Tab(text: "CALLS",),
              Tab(text: "STATUS",),
            ],
          ),
        ),
        body: Container(
          color: const Color(0xFF121C24),
          child: ListView.builder(
            itemCount: whastappController.messages.length,
            itemBuilder: (context, item) {
            return ListTile(
              leading: ClipOval(
                child: Container(
                  width: 40,
                  height: 40,
                  child: Image.asset(whastappController.messages[item].userImage),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(whastappController.messages[item].user, style: const TextStyle(color: Colors.white),),
                  Text(whastappController.messages[item].timeLastMessage, style: Theme.of(context).textTheme.subtitle2!.copyWith(color: const Color(0xFF748186)),),
                ],
              ),
              subtitle: Text(whastappController.messages[item].lastMessage, style: const TextStyle(color: Colors.white38),),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
          backgroundColor: const Color(0xFF029B86),
        ),
      ),
    );
  }
}
