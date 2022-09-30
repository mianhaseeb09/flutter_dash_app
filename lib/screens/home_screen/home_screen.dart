import 'package:flutter/material.dart';
import 'package:flutter_dash_app/screens/widget/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
   TabController? _tabController;
   // static const List<Tab> myTabs = <Tab>[
   //   Tab(text: 'Dining'),
   //   Tab(text: 'PickUp'),
   // ];
   @override
   void initState() {
     super.initState();
     _tabController = TabController(vsync: this, length: 2);
   }
   @override
   void dispose() {
     _tabController!.dispose();
     super.dispose();
   }
   @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(170),
          child: CustomAppBar()),

    );
  }
}
