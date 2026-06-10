import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation =
      Transportation.car; //Set a default value
  Transportation? _transportation;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Additional Controls'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        //The below structure for RadioListTile using groupValue was deprecated. It works, but is not suggested
        /*         RadioListTile(
          title: const Text('By Car'),
          subtitle: const Text('Travel in car'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) => setState((){
            selectedTransportation = Transportation.car;
          })
        ),
        RadioListTile(
          title: const Text('By Plane'),
          subtitle: const Text('Travel in plane'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) => setState((){
            selectedTransportation = Transportation.plane;
          })
        ),
        RadioListTile(
          title: const Text('By Boat'),
          subtitle: const Text('Travel in boat'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) => setState((){
            selectedTransportation = Transportation.boat;
          })
        ),
        RadioListTile(
          title: const Text('By Submarine'),
          subtitle: const Text('Travel in submarine'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) => setState((){
            selectedTransportation = Transportation.submarine;
          })
        ), */

        //This is the new way to do it: https://api.flutter.dev/flutter/widgets/RadioGroup-class.html
        RadioGroup(
          groupValue: _transportation,
          onChanged: (Transportation? value) {
            setState(() {
              _transportation = value;
            });
          },
          child: Column(
            crossAxisAlignment: .start,
            children: <Widget>[
              const ListTile(
                title: Text('By Car'),
                subtitle: Text('Travel in Car'),
                leading: Radio<Transportation>(
                  toggleable: true,
                  value: Transportation.car,
                ),
              ),
              const ListTile(
                title: Text('By Plane'),
                subtitle: Text('Travel in Plane'),
                leading: Radio<Transportation>(
                  toggleable: true,
                  value: Transportation.plane,
                ),
              ),
              const ListTile(
                title: Text('By Boat'),
                subtitle: Text('Travel in Boat'),
                leading: Radio<Transportation>(
                  toggleable: true,
                  value: Transportation.boat,
                ),
              ),
              const ListTile(
                title: Text('By Submarine'),
                subtitle: Text('Travel in submarine'),
                leading: Radio<Transportation>(
                  toggleable: true,
                  value: Transportation.submarine,
                ),
              ),
            ],
          ),
        ),

        ExpansionTile(
          title: const Text('Transport Type'),
          subtitle: Text('$_transportation'),
          children: [
            RadioGroup(
              groupValue: _transportation,
              onChanged: (Transportation? value) {
                setState(() {
                  _transportation = value;
                });
              },
              child: Column(
                crossAxisAlignment: .start,
                children: <Widget>[
                  const ListTile(
                    title: Text('By Car'),
                    subtitle: Text('Travel in Car'),
                    leading: Radio<Transportation>(
                      toggleable: true,
                      value: Transportation.car,
                    ),
                  ),
                  const ListTile(
                    title: Text('By Plane'),
                    subtitle: Text('Travel in Plane'),
                    leading: Radio<Transportation>(
                      toggleable: true,
                      value: Transportation.plane,
                    ),
                  ),
                  const ListTile(
                    title: Text('By Boat'),
                    subtitle: Text('Travel in Boat'),
                    leading: Radio<Transportation>(
                      toggleable: true,
                      value: Transportation.boat,
                    ),
                  ),
                  const ListTile(
                    title: Text('By Submarine'),
                    subtitle: Text('Travel in submarine'),
                    leading: Radio<Transportation>(
                      toggleable: true,
                      value: Transportation.submarine,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        CheckboxListTile(
          value: wantsBreakfast,
          title: const Text('Breakfast'),
          onChanged: (value) => {wantsBreakfast = !wantsBreakfast},
        ),

        CheckboxListTile(
          value: wantsLunch,
          title: const Text('Lunch'),
          onChanged: (value) => setState((){
            wantsLunch = !wantsLunch;
            },
        )),

        CheckboxListTile(
          value: wantsDinner,
          title: const Text('Dinner'),
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
