import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'location_coordinates.freezed.dart';
part 'location_coordinates.g.dart';

/// {@template location_coordinates}
/// LocationCoordinates description
/// {@endtemplate}
@freezed
class LocationCoordinates with _$LocationCoordinates {
  /// {@macro location_coordinates}
  const factory LocationCoordinates({ 
    required double longitude,
    required double latitude,
  }) = _LocationCoordinates;
  
    /// Creates a LocationCoordinates from Json map
  factory LocationCoordinates.fromJson(Map<String, dynamic> data) => _$LocationCoordinatesFromJson(data);
}
