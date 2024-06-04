// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationCoordinatesImpl _$$LocationCoordinatesImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationCoordinatesImpl(
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocationCoordinatesImplToJson(
        _$LocationCoordinatesImpl instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
