
import 'package:classi_chat/export.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                builder:(context)=>const MobileChatScreen(),
              )
            );
            },
            child: Padding( 
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                title: Text(
                  info[index]['name'].toString(),
                  style: const TextStyle(fontSize: 18),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                  info[index]['profilePic'].toString(),
                )),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
