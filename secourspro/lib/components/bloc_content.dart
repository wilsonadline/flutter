import 'package:flutter/material.dart';

class ContentBloc extends StatefulWidget {
  const ContentBloc({super.key, this.content = const SizedBox()});

  final Widget content;

  @override
  State<ContentBloc> createState() => ContentBlocState();
}

class ContentBlocState extends State<ContentBloc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3))
          ]),
      child: Column(
        children: [widget.content],
      ),
    );
  }
}
