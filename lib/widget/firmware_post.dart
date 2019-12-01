import 'dart:io';


import 'package:cached_network_image/cached_network_image.dart';
import 'package:isp/model/built_firmware.dart';
import 'package:isp/network/api_service.dart';
import 'package:flutter/material.dart';
import 'package:chopper/chopper.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:isp/model/built_firmwares.dart';
import 'package:flutter_paginator/flutter_paginator.dart';

class FirmwareModelPage extends StatefulWidget {
  final String data;

  FirmwareModelPage({
    Key key,
    @required this.data,
  }) : super(key: key);
  _FirmwareModelPageState createState() => _FirmwareModelPageState();
}


class _FirmwareModelPageState extends State<FirmwareModelPage> {

  GlobalKey<PaginatorState> pageGlobalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data),
      ),
      body: Paginator.listView(
         key: pageGlobalKey,
          pageLoadFuture: (int page) =>  Provider.of<ApiService>(context).getFirmwares(page),
          pageItemsGetter: listItemsGetter,
          listItemBuilder: listItemBuilder,
          loadingWidgetBuilder: loadingWidgetMaker,
          errorWidgetBuilder: errorWidgetMaker,
          emptyListWidgetBuilder: emptyListWidgetMaker,
          totalItemsGetter: totalPagesGetter,
          pageErrorChecker: pageErrorChecker,
          scrollPhysics: BouncingScrollPhysics()),
    );
  }
}

List<dynamic> listItemsGetter(Response<BuiltFirmwares> firmwares) {
  List<BuiltFirmware> list = [];
  firmwares.body.firmwares.forEach((value) {
    list.add(value);
  });
  return list;
}

Widget listItemBuilder(value, int index) {
  BuiltFirmware myFirmware = value as BuiltFirmware;

  return ListTile(
      leading: Container(
       width: 50,
        child:Image.network("http://myanmarservice.org/storage/" + myFirmware.photo),

      ),

      title: Container(
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Text(
           myFirmware.name

        ),
      )
  );

}

Widget loadingWidgetMaker() {
  return Container(
    alignment: Alignment.center,
    height: 50.0,
    child: CircularProgressIndicator(),
  );
}

Widget errorWidgetMaker(Response<BuiltFirmwares> firmwares, retryListener) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("error"),
      ),
      FlatButton(
        onPressed: retryListener,
        child: Text('Retry'),
      )
    ],
  );
}

Widget emptyListWidgetMaker(Response<BuiltFirmwares> firmwares) {
  return Center(
    child: Text('No countries in the list'),
  );
}

int totalPagesGetter(Response<BuiltFirmwares> firmwares) {
  return firmwares.body.total;
}

bool pageErrorChecker(Response<BuiltFirmwares> firmwares) {
  return firmwares.statusCode != 200;
}


