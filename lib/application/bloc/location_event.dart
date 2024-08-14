part of 'location_bloc.dart';

@immutable
sealed class LocationEvent {}
class LocationChangedEvent extends LocationEvent {
  final String selectedLocation;

  LocationChangedEvent(this.selectedLocation);

  @override
  List<Object> get props => [selectedLocation];
}
