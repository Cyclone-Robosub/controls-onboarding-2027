// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from custom_interfaces:msg\Sensors.idl
// generated code does not contain a copyright notice

// IWYU pragma: private, include "custom_interfaces/msg/sensors.h"


#ifndef CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__STRUCT_H_
#define CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// Constants defined in the message

/// Struct defined in msg/Sensors in the package custom_interfaces.
/**
  * Position and ultrasonic sensor readings
 */
typedef struct custom_interfaces__msg__Sensors
{
  double x;
  double y;
  double yaw;
  double d1;
  double d2;
  double d3;
} custom_interfaces__msg__Sensors;

// Struct for a sequence of custom_interfaces__msg__Sensors.
typedef struct custom_interfaces__msg__Sensors__Sequence
{
  custom_interfaces__msg__Sensors * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} custom_interfaces__msg__Sensors__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__STRUCT_H_
