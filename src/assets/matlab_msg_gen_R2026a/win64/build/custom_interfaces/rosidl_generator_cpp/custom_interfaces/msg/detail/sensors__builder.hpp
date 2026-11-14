// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from custom_interfaces:msg\Sensors.idl
// generated code does not contain a copyright notice

// IWYU pragma: private, include "custom_interfaces/msg/sensors.hpp"


#ifndef CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__BUILDER_HPP_
#define CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "custom_interfaces/msg/detail/sensors__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace custom_interfaces
{

namespace msg
{

namespace builder
{

class Init_Sensors_d3
{
public:
  explicit Init_Sensors_d3(::custom_interfaces::msg::Sensors & msg)
  : msg_(msg)
  {}
  ::custom_interfaces::msg::Sensors d3(::custom_interfaces::msg::Sensors::_d3_type arg)
  {
    msg_.d3 = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::msg::Sensors msg_;
};

class Init_Sensors_d2
{
public:
  explicit Init_Sensors_d2(::custom_interfaces::msg::Sensors & msg)
  : msg_(msg)
  {}
  Init_Sensors_d3 d2(::custom_interfaces::msg::Sensors::_d2_type arg)
  {
    msg_.d2 = std::move(arg);
    return Init_Sensors_d3(msg_);
  }

private:
  ::custom_interfaces::msg::Sensors msg_;
};

class Init_Sensors_d1
{
public:
  explicit Init_Sensors_d1(::custom_interfaces::msg::Sensors & msg)
  : msg_(msg)
  {}
  Init_Sensors_d2 d1(::custom_interfaces::msg::Sensors::_d1_type arg)
  {
    msg_.d1 = std::move(arg);
    return Init_Sensors_d2(msg_);
  }

private:
  ::custom_interfaces::msg::Sensors msg_;
};

class Init_Sensors_yaw
{
public:
  explicit Init_Sensors_yaw(::custom_interfaces::msg::Sensors & msg)
  : msg_(msg)
  {}
  Init_Sensors_d1 yaw(::custom_interfaces::msg::Sensors::_yaw_type arg)
  {
    msg_.yaw = std::move(arg);
    return Init_Sensors_d1(msg_);
  }

private:
  ::custom_interfaces::msg::Sensors msg_;
};

class Init_Sensors_y
{
public:
  explicit Init_Sensors_y(::custom_interfaces::msg::Sensors & msg)
  : msg_(msg)
  {}
  Init_Sensors_yaw y(::custom_interfaces::msg::Sensors::_y_type arg)
  {
    msg_.y = std::move(arg);
    return Init_Sensors_yaw(msg_);
  }

private:
  ::custom_interfaces::msg::Sensors msg_;
};

class Init_Sensors_x
{
public:
  Init_Sensors_x()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_Sensors_y x(::custom_interfaces::msg::Sensors::_x_type arg)
  {
    msg_.x = std::move(arg);
    return Init_Sensors_y(msg_);
  }

private:
  ::custom_interfaces::msg::Sensors msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::msg::Sensors>()
{
  return custom_interfaces::msg::builder::Init_Sensors_x();
}

}  // namespace custom_interfaces

#endif  // CUSTOM_INTERFACES__MSG__DETAIL__SENSORS__BUILDER_HPP_
