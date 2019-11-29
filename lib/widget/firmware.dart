import 'package:flutter/material.dart';
import 'package:isp/widget/firmware_post.dart';

class FirmwarePage extends StatefulWidget {
  FirmwarePage({@required this.title});
  final title;


  _FirmwarePageState createState() => _FirmwarePageState();
}

class _FirmwarePageState extends State<FirmwarePage>{

  @override
  Widget build(BuildContext context) {

    return _myListView(context);
  }

}

Widget _myListView(BuildContext context) {
  final titles = ['Oppo', 'Vivo', 'Huawei', 'Xiaomi'];

  final image = [
    AssetImage('assets/images/oppo.png'),
    AssetImage('assets/images/vivo.png'),
    AssetImage('assets/images/huawei.png'),
    AssetImage('assets/images/xiaomi.png'),


  ];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        //                           <-- Card widget
        child: ListTile(
          leading: CircleAvatar(backgroundImage: image[index]),
          title: Text(titles[index]),
          onTap: () {
            Navigator.push(
              context,
              new MaterialPageRoute(

                builder: (context) => FirmwareModelPage(data:titles[index]),
              ),
            );
          },
        ),
      );
    },
  );
}

