// generated from rosidl_generator_c/resource/idl__description.c.em
// with input from custom_interfaces:msg\Sensors.idl
// generated code does not contain a copyright notice

#include "custom_interfaces/msg/detail/sensors__functions.h"

ROSIDL_GENERATOR_C_PUBLIC_custom_interfaces
const rosidl_type_hash_t *
custom_interfaces__msg__Sensors__get_type_hash(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_type_hash_t hash = {1, {
      0xc7, 0xe0, 0xf7, 0xb8, 0x07, 0xb8, 0x34, 0x01,
      0x29, 0x2d, 0x78, 0xfa, 0x28, 0xfb, 0xcc, 0x17,
      0xd1, 0xfe, 0x45, 0x0e, 0x5f, 0xf0, 0x9f, 0xf5,
      0x2c, 0x0f, 0xf5, 0x30, 0x0d, 0x9b, 0xa4, 0x30,
    }};
  return &hash;
}

#include <assert.h>
#include <string.h>

// Include directives for referenced types

// Hashes for external referenced types
#ifndef NDEBUG
#endif

static char custom_interfaces__msg__Sensors__TYPE_NAME[] = "custom_interfaces/msg/Sensors";

// Define type names, field names, and default values
static char custom_interfaces__msg__Sensors__FIELD_NAME__x[] = "x";
static char custom_interfaces__msg__Sensors__FIELD_NAME__y[] = "y";
static char custom_interfaces__msg__Sensors__FIELD_NAME__yaw[] = "yaw";
static char custom_interfaces__msg__Sensors__FIELD_NAME__d1[] = "d1";
static char custom_interfaces__msg__Sensors__FIELD_NAME__d2[] = "d2";
static char custom_interfaces__msg__Sensors__FIELD_NAME__d3[] = "d3";

static rosidl_runtime_c__type_description__Field custom_interfaces__msg__Sensors__FIELDS[] = {
  {
    {custom_interfaces__msg__Sensors__FIELD_NAME__x, 1, 1},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_DOUBLE,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
  {
    {custom_interfaces__msg__Sensors__FIELD_NAME__y, 1, 1},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_DOUBLE,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
  {
    {custom_interfaces__msg__Sensors__FIELD_NAME__yaw, 3, 3},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_DOUBLE,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
  {
    {custom_interfaces__msg__Sensors__FIELD_NAME__d1, 2, 2},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_DOUBLE,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
  {
    {custom_interfaces__msg__Sensors__FIELD_NAME__d2, 2, 2},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_DOUBLE,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
  {
    {custom_interfaces__msg__Sensors__FIELD_NAME__d3, 2, 2},
    {
      rosidl_runtime_c__type_description__FieldType__FIELD_TYPE_DOUBLE,
      0,
      0,
      {NULL, 0, 0},
    },
    {NULL, 0, 0},
  },
};

const rosidl_runtime_c__type_description__TypeDescription *
custom_interfaces__msg__Sensors__get_type_description(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static bool constructed = false;
  static const rosidl_runtime_c__type_description__TypeDescription description = {
    {
      {custom_interfaces__msg__Sensors__TYPE_NAME, 29, 29},
      {custom_interfaces__msg__Sensors__FIELDS, 6, 6},
    },
    {NULL, 0, 0},
  };
  if (!constructed) {
    constructed = true;
  }
  return &description;
}

static char toplevel_type_raw_source[] =
  "# Position and ultrasonic sensor readings\n"
  "float64 x\n"
  "float64 y\n"
  "float64 yaw\n"
  "float64 d1\n"
  "float64 d2\n"
  "float64 d3";

static char msg_encoding[] = "msg";

// Define all individual source functions

const rosidl_runtime_c__type_description__TypeSource *
custom_interfaces__msg__Sensors__get_individual_type_description_source(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static const rosidl_runtime_c__type_description__TypeSource source = {
    {custom_interfaces__msg__Sensors__TYPE_NAME, 29, 29},
    {msg_encoding, 3, 3},
    {toplevel_type_raw_source, 106, 106},
  };
  return &source;
}

const rosidl_runtime_c__type_description__TypeSource__Sequence *
custom_interfaces__msg__Sensors__get_type_description_sources(
  const rosidl_message_type_support_t * type_support)
{
  (void)type_support;
  static rosidl_runtime_c__type_description__TypeSource sources[1];
  static const rosidl_runtime_c__type_description__TypeSource__Sequence source_sequence = {sources, 1, 1};
  static bool constructed = false;
  if (!constructed) {
    sources[0] = *custom_interfaces__msg__Sensors__get_individual_type_description_source(NULL),
    constructed = true;
  }
  return &source_sequence;
}
