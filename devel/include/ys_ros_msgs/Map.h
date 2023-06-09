// Generated by gencpp from file ys_ros_msgs/Map.msg
// DO NOT EDIT!


#ifndef YS_ROS_MSGS_MESSAGE_MAP_H
#define YS_ROS_MSGS_MESSAGE_MAP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ys_ros_msgs/Lane.h>

namespace ys_ros_msgs
{
template <class ContainerAllocator>
struct Map_
{
  typedef Map_<ContainerAllocator> Type;

  Map_()
    : lane_num(0)
    , lanes()  {
    }
  Map_(const ContainerAllocator& _alloc)
    : lane_num(0)
    , lanes(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _lane_num_type;
  _lane_num_type lane_num;

   typedef std::vector< ::ys_ros_msgs::Lane_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ys_ros_msgs::Lane_<ContainerAllocator> >> _lanes_type;
  _lanes_type lanes;





  typedef boost::shared_ptr< ::ys_ros_msgs::Map_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ys_ros_msgs::Map_<ContainerAllocator> const> ConstPtr;

}; // struct Map_

typedef ::ys_ros_msgs::Map_<std::allocator<void> > Map;

typedef boost::shared_ptr< ::ys_ros_msgs::Map > MapPtr;
typedef boost::shared_ptr< ::ys_ros_msgs::Map const> MapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ys_ros_msgs::Map_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ys_ros_msgs::Map_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ys_ros_msgs::Map_<ContainerAllocator1> & lhs, const ::ys_ros_msgs::Map_<ContainerAllocator2> & rhs)
{
  return lhs.lane_num == rhs.lane_num &&
    lhs.lanes == rhs.lanes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ys_ros_msgs::Map_<ContainerAllocator1> & lhs, const ::ys_ros_msgs::Map_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ys_ros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ys_ros_msgs::Map_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ys_ros_msgs::Map_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ys_ros_msgs::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ys_ros_msgs::Map_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ys_ros_msgs::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ys_ros_msgs::Map_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ys_ros_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c3d491eef4a21986c927049c6c1329f8";
  }

  static const char* value(const ::ys_ros_msgs::Map_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc3d491eef4a21986ULL;
  static const uint64_t static_value2 = 0xc927049c6c1329f8ULL;
};

template<class ContainerAllocator>
struct DataType< ::ys_ros_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ys_ros_msgs/Map";
  }

  static const char* value(const ::ys_ros_msgs::Map_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ys_ros_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 lane_num\n"
"Lane[] lanes\n"
"\n"
"================================================================================\n"
"MSG: ys_ros_msgs/Lane\n"
"int32 point_num\n"
"PointXYA[] points\n"
"================================================================================\n"
"MSG: ys_ros_msgs/PointXYA\n"
"Header header\n"
"float64 x\n"
"float64 y\n"
"float64 yaw  # degs\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::ys_ros_msgs::Map_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ys_ros_msgs::Map_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lane_num);
      stream.next(m.lanes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Map_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ys_ros_msgs::Map_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ys_ros_msgs::Map_<ContainerAllocator>& v)
  {
    s << indent << "lane_num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lane_num);
    s << indent << "lanes[]" << std::endl;
    for (size_t i = 0; i < v.lanes.size(); ++i)
    {
      s << indent << "  lanes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ys_ros_msgs::Lane_<ContainerAllocator> >::stream(s, indent + "    ", v.lanes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // YS_ROS_MSGS_MESSAGE_MAP_H
