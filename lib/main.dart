import 'package:flutter/material.dart';
import 'package:polihack/driver_routes.dart';
import 'package:polihack/passenger_routes.dart';
import 'package:polihack/users/driver.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool currst = false;
  late String current = 'Passenger';
  var icoana = Icons.car_crash;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                currst = !currst;
                current = currst ? '     Driver    ' : 'Passenger';
                icoana = currst ? Icons.directions_car : Icons.people;
              });
            },
            icon: Icon(icoana, size: 24.0),
            label: Text(current),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      currst ? DRoutes() : DriversList(title: "Drivers")));
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.add),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => currst ? DRoutes() : PRoutes()));
            },
            icon: Icon(Icons.location_pin, size: 24.0),
            label: Text('    Route     '),
          ),
        ],
      )),
      body: Center(),
    );
  }
}
