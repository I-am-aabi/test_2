import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_2/model/get_data.dart';
import 'package:test_2/view/product_widget.dart';

class MyhomeScreen extends StatefulWidget {
  const MyhomeScreen({super.key});

  @override
  State<MyhomeScreen> createState() => _MyhomeScreenState();
}

class _MyhomeScreenState extends State<MyhomeScreen> {
  late StreamSubscription _subscription;

  @override
  void initState() {
    _subscription = getdata().listen((event) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MWS'),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: StreamBuilder(
            stream: getdata(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.active ||
                  snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  final List<dynamic> data = snapshot.data;
                  return Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ProductWidget(
                          data: data[index],
                        );
                        
                      },
                      itemCount: snapshot.data.length,
                    ),
                  );
                }
              }
              else{
                
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
