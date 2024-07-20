import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secourspro/components/colors.dart';

class SosSection extends StatefulWidget {
  const SosSection({super.key});

  @override
  State<SosSection> createState() => _SosSectionState();
}

class _SosSectionState extends State<SosSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              context.push('/incidents');
            },
            child: Container(
              decoration: BoxDecoration(
                color: red,
                borderRadius: BorderRadius.circular(60.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              width: 100.0,
              height: 100.0,
              child: const Center(
                  child: Text('SOS',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: white,
                          fontWeight: FontWeight.bold))),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  left: 20,
                  right: 20,
                ),
                child: const ButtonUrgency(
                  title: 'Malaise',
                  route: '/malaise',
                  icon: Icons.local_hospital,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: const ButtonUrgency(
                  title: 'Malaise',
                  route: '/malaise',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  left: 20,
                  right: 20,
                ),
                child: const ButtonUrgency(
                  title: 'Malaise',
                  route: '/malaise',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonUrgency extends StatefulWidget {
  const ButtonUrgency({super.key, this.title, this.route, this.icon});

  final String? title;
  final String? route;
  final IconData? icon;

  @override
  State<ButtonUrgency> createState() => ButtonUrgencyState();
}

class ButtonUrgencyState extends State<ButtonUrgency> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () {
          print(widget.title);
        },
        child: Container(
          decoration: BoxDecoration(
            color: red,
            borderRadius: BorderRadius.circular(60.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          width: 60.0,
          height: 60.0,
          child: Center(
            child: Icon(
              widget.icon ?? Icons.local_hospital,
              color: white,
            ),
          ),
        ),
      ),
      SizedBox(height: 5.0),
      Text(
        widget.title ?? 'Urgence',
        style: const TextStyle(
          fontSize: 12.0,
          color: Colors.black,
        ),
      )
    ]);
  }
}
