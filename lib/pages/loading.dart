// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names, unused_local_variable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:netninja_tutorial/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // void WorldTime({required String location, required String flag}) {}

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Kenya', flag: 'kenay.gpeg', url: 'Africa/Nairobi');
    await instance.getTime();
    print('object');
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  void initState() {
    //
    super.initState();
    // getTime();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
            child: SpinKitRotatingCircle(
          color: Colors.black,
          size: 50.0,
        )));
  }
}
