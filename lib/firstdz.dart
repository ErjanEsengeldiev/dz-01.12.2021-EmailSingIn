import 'package:dz_email/seconddz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class FirstDz extends StatelessWidget {
  const FirstDz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter First App',
      home: ForScaffold(),
    );
  }
}

class ForScaffold extends StatefulWidget {
  const ForScaffold({Key? key}) : super(key: key);

  @override
  State<ForScaffold> createState() => _ForScaffoldState();
}

class _ForScaffoldState extends State<ForScaffold> {
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
        tabs: [
          Tab(icon: Text('Dz Cub`s')),
          Tab(icon: Text('Dz ListOfCloth`s')),
        ],
      ),
          elevation: 0,
          centerTitle: false,
          title: const Center(child: Text('My Home Work`s')),
        ),
        body: const TabBarView(children:  [FirstDzz(),SecondDz(),])
      
       
      ),
    );
    
  }
}

class FirstDzz extends StatelessWidget {
  const FirstDzz({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     
         children: const [
          FirstColum(),
          SecondColum(),
          SerthColum(),
        ],),
    );
  }
}

class SerthColum extends StatelessWidget {
  const SerthColum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
    Container(
    width: 80,
    height: 80,
    color: Colors.red,
    child: const Center(child: Text('1')),
    ),
    Container(
    width: 100,
    height: 100,
    color: Colors.yellow,
    child: const Center(child: Text('2')),
    ),
    Container(
    width: 120,
    height: 120,
    color: Colors.green,
    child: const Center(child: Text('3')),
    ),
    
    
    
      ],);
  }
}

class SecondColum extends StatelessWidget {
  const SecondColum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
    Container(
      width: 80,
      height: 80,
      color: Colors.red,
      child: const Center(child: Text('1')),
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.yellow,
      child: const Center(child: Text('2')),
    ),
    Container(
      width: 120,
      height: 120,
      color: Colors.green,
      child: const Center(child: Text('3')),
    ),
    
    
        ],) 
    
    ,);
  }
}

class FirstColum extends StatelessWidget {
  const FirstColum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: const Center(child: Text('1')),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: const Center(child: Text('2')),
          ),
          Container(
            width: 120,
            height: 120,
            color: Colors.green,
            child: const Center(child: Text('3')),
          ),

          
          
          
        ],) 
    
    ,);
  }
}


  




