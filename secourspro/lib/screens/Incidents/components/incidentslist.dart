import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IncidentsList extends StatefulWidget {
  const IncidentsList({super.key});

  @override
  State<IncidentsList> createState() => _IncidentsListState();
}

class _IncidentsListState extends State<IncidentsList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('Incident $index'),
                  subtitle: Text('Description $index'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    context.push('/incident/$index');
                  },
                ),
              );
            }));
  }
}
