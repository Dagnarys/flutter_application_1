import 'package:flutter/material.dart';

class Textlocationwidget extends StatelessWidget {
  const Textlocationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 162,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Location',
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Color.fromRGBO(230, 230, 230, 100),
                fontSize: 14,
                fontWeight: FontWeight.w300),
          ),
          DropdownLocation(),
        ],
      ),
    );
  }
}
//

class Location {
  String city;
  String district;

  Location({required this.city, required this.district});
  @override
  String toString() {
    return 'Town: $city, District,$district';
  }
}

List<Location> listLocation = [
  Location(city: 'Blizen', district: 'Tanjungbalai'),
  Location(city: 'Jakarta', district: 'Jakarta Selatan'),
  Location(city: 'Surabaya', district: 'Kota Surabaya'),
  Location(city: 'Medan', district: 'Sumatera Utara'),
];

class DropdownLocation extends StatefulWidget {
  const DropdownLocation({super.key});

  @override
  State<DropdownLocation> createState() => _DropdownLocationState();
}

class _DropdownLocationState extends State<DropdownLocation> {
  Location dropDownLocation = listLocation.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Location>(
      padding: const EdgeInsets.all(0),
      icon: const Icon(Icons.keyboard_arrow_down),
      isExpanded: true,
      value: dropDownLocation,
      items: listLocation.map<DropdownMenuItem<Location>>((Location location) {
        return DropdownMenuItem<Location>(
          value: location,
          child: Text(
            '${location.city}, ${location.district}',
            style: const TextStyle(
                color: Color.fromRGBO(230, 230, 230, 100),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ), // Отображение имени
        );
      }).toList(),
      dropdownColor: Color(0xFF313131),
      underline: Container(),
      borderRadius: BorderRadius.all(Radius.circular(15)),
      onChanged: (Location? newValue) {
        // This is called when the user selects an item.
        setState(() {
          dropDownLocation = newValue!;
        });
      },
    );
  }
}
