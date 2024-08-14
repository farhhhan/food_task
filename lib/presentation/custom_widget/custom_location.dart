import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_box/application/bloc/location_bloc.dart';
import 'package:food_box/utils/color.dart';

class LocationandUser extends StatelessWidget {
  final List<String> locations = [
    'Hyderabad',
    'Bangalore',
    'Kochi',
    'Chennai',
    'Delhi'
  ];

  LocationandUser({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationBloc(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi, Monica!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 78, 10, 214),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Current location",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined,
                            color: Colors.purple),
                        const SizedBox(width: 4),
                        BlocBuilder<LocationBloc, LocationState>(
                          builder: (context, state) {
                            String selectedLocation =
                                'Hyderabad'; 
                            if (state is LocationChanged) {
                              selectedLocation = state.selectedLocation;
                            }
                            return DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedLocation,
                                items: locations.map((String location) {
                                  return DropdownMenuItem<String>(
                                    value: location,
                                    child: Text(
                                      location,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  context
                                      .read<LocationBloc>()
                                      .add(LocationChangedEvent(newValue!));
                                },
                                icon: const Icon(Icons.expand_more_rounded,
                                    color: Colors.grey),
                                style: const TextStyle(color: Colors.black),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.play_circle_outline,
                        color: CustomColor.blueColor()),
                    const Text("How it works?")
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
