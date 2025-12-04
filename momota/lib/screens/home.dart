import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:momota/shared/searchbar.dart';
import 'package:momota/strings/strings.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appTitle),
        backgroundColor: Color(0xFFF3E8DE),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: [
            Hero(width: width, height: height*0.5),
          ],
        )
      )
    );
  }
}

class Hero extends ConsumerWidget {
  final width;
  final height;
  Hero({this.width, this.height});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      //height: height,
      decoration: BoxDecoration(
        color: Color(0xFFF3E8DE), // background color
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
        ), // rounded corners
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              AppStrings.welcomeMessage,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          CustomSearchBar(),
        ],
      ),
    );
  }
}