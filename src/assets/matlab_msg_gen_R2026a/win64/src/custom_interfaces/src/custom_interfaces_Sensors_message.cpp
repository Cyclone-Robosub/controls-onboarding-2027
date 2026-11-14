// Copyright 2020-2022 The MathWorks, Inc.
// Common copy functions for custom_interfaces/Sensors
#ifdef _MSC_VER
#pragma warning(push)
#pragma warning(disable : 4100)
#pragma warning(disable : 4265)
#pragma warning(disable : 4456)
#pragma warning(disable : 4458)
#pragma warning(disable : 4946)
#pragma warning(disable : 4244)
#else
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
#pragma GCC diagnostic ignored "-Wunused-local-typedefs"
#pragma GCC diagnostic ignored "-Wredundant-decls"
#pragma GCC diagnostic ignored "-Wnon-virtual-dtor"
#pragma GCC diagnostic ignored "-Wdelete-non-virtual-dtor"
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-variable"
#pragma GCC diagnostic ignored "-Wshadow"
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif //_MSC_VER
#include "rclcpp/rclcpp.hpp"
#include "custom_interfaces/msg/sensors.hpp"
#include "visibility_control.h"
#include "class_loader/multi_library_class_loader.hpp"
#include "ROS2PubSubTemplates.hpp"
class CUSTOM_INTERFACES_EXPORT ros2_custom_interfaces_msg_Sensors_common : public MATLABROS2MsgInterface<custom_interfaces::msg::Sensors> {
  public:
    virtual ~ros2_custom_interfaces_msg_Sensors_common(){}
    virtual void copy_from_struct(custom_interfaces::msg::Sensors* msg, const matlab::data::Struct& arr, MultiLibLoader loader); 
    //----------------------------------------------------------------------------
    virtual MDArray_T get_arr(MDFactory_T& factory, const custom_interfaces::msg::Sensors* msg, MultiLibLoader loader, size_t size = 1);
};
  void ros2_custom_interfaces_msg_Sensors_common::copy_from_struct(custom_interfaces::msg::Sensors* msg, const matlab::data::Struct& arr,
               MultiLibLoader loader) {
    try {
        //x
        const matlab::data::TypedArray<double> x_arr = arr["x"];
        msg->x = x_arr[0];
    } catch (matlab::data::InvalidFieldNameException&) {
        throw std::invalid_argument("Field 'x' is missing.");
    } catch (matlab::Exception&) {
        throw std::invalid_argument("Field 'x' is wrong type; expected a double.");
    }
    try {
        //y
        const matlab::data::TypedArray<double> y_arr = arr["y"];
        msg->y = y_arr[0];
    } catch (matlab::data::InvalidFieldNameException&) {
        throw std::invalid_argument("Field 'y' is missing.");
    } catch (matlab::Exception&) {
        throw std::invalid_argument("Field 'y' is wrong type; expected a double.");
    }
    try {
        //yaw
        const matlab::data::TypedArray<double> yaw_arr = arr["yaw"];
        msg->yaw = yaw_arr[0];
    } catch (matlab::data::InvalidFieldNameException&) {
        throw std::invalid_argument("Field 'yaw' is missing.");
    } catch (matlab::Exception&) {
        throw std::invalid_argument("Field 'yaw' is wrong type; expected a double.");
    }
    try {
        //d1
        const matlab::data::TypedArray<double> d1_arr = arr["d1"];
        msg->d1 = d1_arr[0];
    } catch (matlab::data::InvalidFieldNameException&) {
        throw std::invalid_argument("Field 'd1' is missing.");
    } catch (matlab::Exception&) {
        throw std::invalid_argument("Field 'd1' is wrong type; expected a double.");
    }
    try {
        //d2
        const matlab::data::TypedArray<double> d2_arr = arr["d2"];
        msg->d2 = d2_arr[0];
    } catch (matlab::data::InvalidFieldNameException&) {
        throw std::invalid_argument("Field 'd2' is missing.");
    } catch (matlab::Exception&) {
        throw std::invalid_argument("Field 'd2' is wrong type; expected a double.");
    }
    try {
        //d3
        const matlab::data::TypedArray<double> d3_arr = arr["d3"];
        msg->d3 = d3_arr[0];
    } catch (matlab::data::InvalidFieldNameException&) {
        throw std::invalid_argument("Field 'd3' is missing.");
    } catch (matlab::Exception&) {
        throw std::invalid_argument("Field 'd3' is wrong type; expected a double.");
    }
  }
  //----------------------------------------------------------------------------
  MDArray_T ros2_custom_interfaces_msg_Sensors_common::get_arr(MDFactory_T& factory, const custom_interfaces::msg::Sensors* msg,
       MultiLibLoader loader, size_t size) {
    auto outArray = factory.createStructArray({size,1},{"MessageType","x","y","yaw","d1","d2","d3"});
    for(size_t ctr = 0; ctr < size; ctr++){
    outArray[ctr]["MessageType"] = factory.createCharArray("custom_interfaces/Sensors");
    // x
    auto currentElement_x = (msg + ctr)->x;
    outArray[ctr]["x"] = factory.createScalar(currentElement_x);
    // y
    auto currentElement_y = (msg + ctr)->y;
    outArray[ctr]["y"] = factory.createScalar(currentElement_y);
    // yaw
    auto currentElement_yaw = (msg + ctr)->yaw;
    outArray[ctr]["yaw"] = factory.createScalar(currentElement_yaw);
    // d1
    auto currentElement_d1 = (msg + ctr)->d1;
    outArray[ctr]["d1"] = factory.createScalar(currentElement_d1);
    // d2
    auto currentElement_d2 = (msg + ctr)->d2;
    outArray[ctr]["d2"] = factory.createScalar(currentElement_d2);
    // d3
    auto currentElement_d3 = (msg + ctr)->d3;
    outArray[ctr]["d3"] = factory.createScalar(currentElement_d3);
    }
    return outArray;
  } 
class CUSTOM_INTERFACES_EXPORT ros2_custom_interfaces_Sensors_message : public ROS2MsgElementInterfaceFactory {
  public:
    virtual ~ros2_custom_interfaces_Sensors_message(){}
    virtual std::shared_ptr<MATLABPublisherInterface> generatePublisherInterface(ElementType /*type*/);
    virtual std::shared_ptr<MATLABSubscriberInterface> generateSubscriberInterface(ElementType /*type*/);
    virtual std::shared_ptr<void> generateCppMessage(ElementType /*type*/, const matlab::data::StructArray& /* arr */, MultiLibLoader /* loader */, std::map<std::string,std::shared_ptr<MATLABROS2MsgInterfaceBase>>* /*commonObjMap*/);
    virtual matlab::data::StructArray generateMLMessage(ElementType  /*type*/ ,void*  /* msg */, MultiLibLoader /* loader */ , std::map<std::string,std::shared_ptr<MATLABROS2MsgInterfaceBase>>* /*commonObjMap*/);
};  
  std::shared_ptr<MATLABPublisherInterface> 
          ros2_custom_interfaces_Sensors_message::generatePublisherInterface(ElementType /*type*/){
    return std::make_shared<ROS2PublisherImpl<custom_interfaces::msg::Sensors,ros2_custom_interfaces_msg_Sensors_common>>();
  }
  std::shared_ptr<MATLABSubscriberInterface> 
         ros2_custom_interfaces_Sensors_message::generateSubscriberInterface(ElementType /*type*/){
    return std::make_shared<ROS2SubscriberImpl<custom_interfaces::msg::Sensors,ros2_custom_interfaces_msg_Sensors_common>>();
  }
  std::shared_ptr<void> ros2_custom_interfaces_Sensors_message::generateCppMessage(ElementType /*type*/, 
                                           const matlab::data::StructArray& arr,
                                           MultiLibLoader loader,
                                           std::map<std::string,std::shared_ptr<MATLABROS2MsgInterfaceBase>>* commonObjMap){
    auto msg = std::make_shared<custom_interfaces::msg::Sensors>();
    ros2_custom_interfaces_msg_Sensors_common commonObj;
    commonObj.mCommonObjMap = commonObjMap;
    commonObj.copy_from_struct(msg.get(), arr[0], loader);
    return msg;
  }
  matlab::data::StructArray ros2_custom_interfaces_Sensors_message::generateMLMessage(ElementType  /*type*/ ,
                                                    void*  msg ,
                                                    MultiLibLoader  loader ,
                                                    std::map<std::string,std::shared_ptr<MATLABROS2MsgInterfaceBase>>*  commonObjMap ){
    ros2_custom_interfaces_msg_Sensors_common commonObj;	
    commonObj.mCommonObjMap = commonObjMap;	
    MDFactory_T factory;
    return commonObj.get_arr(factory, (custom_interfaces::msg::Sensors*)msg, loader);			
 }
#include "class_loader/register_macro.hpp"
// Register the component with class_loader.
// This acts as a sort of entry point, allowing the component to be discoverable when its library
// is being loaded into a running process.
CLASS_LOADER_REGISTER_CLASS(ros2_custom_interfaces_msg_Sensors_common, MATLABROS2MsgInterface<custom_interfaces::msg::Sensors>)
CLASS_LOADER_REGISTER_CLASS(ros2_custom_interfaces_Sensors_message, ROS2MsgElementInterfaceFactory)
#ifdef _MSC_VER
#pragma warning(pop)
#else
#pragma GCC diagnostic pop
#endif //_MSC_VER