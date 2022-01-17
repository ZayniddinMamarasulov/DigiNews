import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context){
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    ),
    elevation: 0,
    title: const Center(
      child: Text("Write News", style: TextStyle(
        fontSize: 18,
        height: 1.4,
        fontWeight: FontWeight.w700,
      ),),
    ),

    actions: [TextButton(onPressed: (){}, child: const Text("Preview", style: TextStyle(
      color: Colors.red,
      fontSize: 18,
      height: 1.4,
      fontWeight: FontWeight.w600,

    ),)),
      const SizedBox(width: 24,)
    ],
  );
}