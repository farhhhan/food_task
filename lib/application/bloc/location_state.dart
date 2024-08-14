part of 'location_bloc.dart';

@immutable
sealed class LocationState {}

final class LocationInitial extends LocationState {}
class LocationChanged extends LocationState {
  final String selectedLocation;

  LocationChanged(this.selectedLocation);

  @override
  List<Object> get props => [selectedLocation];
}