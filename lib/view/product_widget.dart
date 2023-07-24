
import 'package:flutter/material.dart';
import 'package:test_2/model/respons_body.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    final result = Root.fromJson(data);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white60),
        height: 600,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  result.imagelink!,
                  fit: BoxFit.contain,
                )),
            Row(
              children: [

                Column(
                  children: [
                    Text(result.name!),
                    Text(result.brand!),
                    Text(result.price!),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
