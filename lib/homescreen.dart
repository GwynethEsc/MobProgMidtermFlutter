import 'package:flutter/material.dart';
//Code By: Gwyneth Escabusa
//Section: BSIT3R6
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState(){
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text("Hello World"),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.person, size: 50),
                  title: Text("Dan"),
                  subtitle: Text("3 Letters"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person, size: 50),
                  title: Text("Reyes"),
                  subtitle: Text("5 Letters"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person, size: 50),
                  title: Text("John"),
                  subtitle: Text("4 Letters"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}