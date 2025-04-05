import 'dart:developer';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationService {
  // Check if location services are enabled
  Future<bool> _checkLocationService() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  // Request location permission
  Future<PermissionStatus> _requestPermission() async {
    return await Permission.location.request();
  }

  // Get current position
  Future<Position?> getCurrentLocation() async {
    try {
      // Check if location services are enabled
      if (!await _checkLocationService()) {
        // Handle case where location services are disabled
        return null;
      }

      // Check permissions
      final status = await _requestPermission();
      if (status != PermissionStatus.granted) {
        // Handle case where permissions are denied
        return null;
      }

      // Get the current position
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      log('exception from location services=> : $e');
      return null;
    }
  }
}
