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
        title: Text(widget.data + " Firmware"),
      ),
      body: Paginator.listView(
          key: pageGlobalKey,
          pageLoadFuture: (int page) =>
              Provider.of<ApiService>(context).getFirmwares(page),
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
  String version;

  if(myFirmware.version != null){

    version = "Version - " + myFirmware.version;
  }else{

    version = '';
  }

  return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: FirmwareListItem(
          thumbnail: CachedNetworkImage(
            imageUrl: "http://myanmarservice.org/storage/" + myFirmware.photo,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),

        title: myFirmware.name,
        subtitle: myFirmware.buildnumber??'',
        version:  version,
  ),


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

class _FirmwareDescription extends StatelessWidget {

  _FirmwareDescription({
    Key key,
    this.title,
    this.subtitle,
    this.version,
    this.publishDate,
    this.readDuration,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String version;
  final String publishDate;
  final String readDuration;


  @override
  Widget build(BuildContext context) {
    bool _isVisible;

    if(subtitle != null){

      _isVisible == true;

    }else{

      _isVisible == false;
    }


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                '$title',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top:10,bottom: 2.0)),
              Text(
                '$subtitle',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.red[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 13
                ),
              ),

              const Padding(padding: EdgeInsets.only(top:10,bottom: 2.0)),


              Text(

              '$version',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.cyan[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 13
                ),
              ),
              const Padding(padding: EdgeInsets.only(top:10,bottom: 2.0)),
              Icon(
                Icons.cloud_download,
                color: Colors.pink,
                size: 20.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ],
          ),
        ),

      ],
    );
  }
}



class FirmwareListItem extends StatelessWidget {
  FirmwareListItem({
    Key key,
    this.thumbnail,
    this.title,
    this.subtitle,
    this.version,

  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String version;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 5.0, 2.0, 0.0),
                child: _FirmwareDescription(
                  title: title,
                  subtitle: subtitle,
                  version: version,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
