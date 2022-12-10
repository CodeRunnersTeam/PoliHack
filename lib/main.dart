import 'package:flutter/material.dart';
import 'package:polihack/routes/driver_routes.dart';
import 'package:polihack/routes/passenger_routes.dart';
import 'package:polihack/users/driver.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
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
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber, // Background color
                ),
                icon: Icon(icoana, size: 24.0),
                label: Text(current),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          currst ? DRoutes() : DriversList(title: "Drivers")));
                },
                backgroundColor: Colors.amber,
                child: const Icon(Icons.add),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => currst ? DRoutes() : PRoutes()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber, // Background color
                ),
                icon: Icon(Icons.location_pin, size: 24.0),
                label: Text('    Route     '),
              ),
            ],
          )),
      body: Center(),
    );
  }
}
