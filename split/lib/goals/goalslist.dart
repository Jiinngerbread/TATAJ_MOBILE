//import 'package:access/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ListPage extends StatefulWidget{
  @override 
  _ListPageState createState() => _ListPageState();
}

Future getPosts() async{
  var firestore = Firestore.instance;
  QuerySnapshot qn = await firestore.collection("nameofCollection").getDocuments();
  return qn.documents;
}

class _ListPageState extends State<ListPage>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: FutureBuilder(
        future: getPosts(),
        builder:(_,snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: Text("Loading.."),
          );
        }else{
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (_, index){
              return ListTile(
                title: Text(snapshot.data[index].data["property"])
              );
            });
        }
      }),
    );
   }
  }


class DetailPage extends StatefulWidget{
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>{
  @override 
  Widget build(BuildContext context){
    return Container();
  }
}