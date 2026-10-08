// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from custom_interfaces:msg\Sensors.idl
// generated code does not contain a copyright notice

// IWYU pragma: private, include "custom_interfaces/msg/sensors.hpp"


#ifndef CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__TRAITS_HPP_
#define CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "custom_interfaces/msg/detail/sensors__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

namespace custom_interfaces
{

namespace msg
{

inline void to_flow_style_yaml(
  const Sensors & msg,
  std::ostream & out)
{
  out << "{";
  // member: x
  {
    out << "x: ";
    rosidl_generator_traits::value_to_yaml(msg.x, out);
    out << ", ";
  }

  // member: y
  {
    out << "y: ";
    rosidl_generator_traits::value_to_yaml(msg.y, out);
    out << ", ";
  }

  // member: yaw
  {
    out << "yaw: ";
    rosidl_generator_traits::value_to_yaml(msg.yaw, out);
    out << ", ";
  }

  // member: d1
  {
    out << "d1: ";
    rosidl_generator_traits::value_to_yaml(msg.d1, out);
    out << ", ";
  }

  // member: d2
  {
    out << "d2: ";
    rosidl_generator_traits::value_to_yaml(msg.d2, out);
    out << ", ";
  }

  // member: d3
  {
    out << "d3: ";
    rosidl_generator_traits::value_to_yaml(msg.d3, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const Sensors & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: x
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "x: ";
    rosidl_generator_traits::value_to_yaml(msg.x, out);
    out << "\n";
  }

  // member: y
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "y: ";
    rosidl_generator_traits::value_to_yaml(msg.y, out);
    out << "\n";
  }

  // member: yaw
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "yaw: ";
    rosidl_generator_traits::value_to_yaml(msg.yaw, out);
    out << "\n";
  }

  // member: d1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "d1: ";
    rosidl_generator_traits::value_to_yaml(msg.d1, out);
    out << "\n";
  }

  // member: d2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "d2: ";
    rosidl_generator_traits::value_to_yaml(msg.d2, out);
    out << "\n";
  }

  // member: d3
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "d3: ";
    rosidl_generator_traits::value_to_yaml(msg.d3, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const Sensors & msg, bool use_flow_style = false)
{
  std::ostringstream out;
  if (use_flow_style) {
    to_flow_style_yaml(msg, out);
  } else {
    to_block_style_yaml(msg, out);
  }
  return out.str();
}

}  // namespace msg

}  // namespace custom_interfaces

namespace rosidl_generator_traits
{

[[deprecated("use custom_interfaces::msg::to_block_style_yaml() instead")]]
inline void to_yaml(
  const custom_interfaces::msg::Sensors & msg,
  std::ostream & out, size_t indentation = 0)
{
  custom_interfaces::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use custom_interfaces::msg::to_yaml() instead")]]
inline std::string to_yaml(const custom_interfaces::msg::Sensors & msg)
{
  return custom_interfaces::msg::to_yaml(msg);
}

template<>
inline const char * data_type<custom_interfaces::msg::Sensors>()
{
  return "custom_interfaces::msg::Sensors";
}

template<>
inline const char * name<custom_interfaces::msg::Sensors>()
{
  return "custom_interfaces/msg/Sensors";
}

template<>
struct has_fixed_size<custom_interfaces::msg::Sensors>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<custom_interfaces::msg::Sensors>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<custom_interfaces::msg::Sensors>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__TRAITS_HPP_
