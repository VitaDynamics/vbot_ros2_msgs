# vbot_ros2_msgs

Public ROS 2 interface definitions for [VITA Dynamics](https://github.com/VitaDynamics) robots. This repository lets third parties build ROS 2 nodes that communicate with VITA robots without needing access to the closed-source robot stack.

> This repository is generated. It is synchronized from the internal `vita-robot` repository on each public release; do not open PRs that edit `*.msg`, `*.srv`, `*.action`, `package.xml`, or `CMakeLists.txt` files directly — those changes will be overwritten on the next sync.

## What is here

- A flat ROS 2 workspace `src/` containing the message / service / action packages that make up the public VITA robot interface.
- A colcon-buildable layout (no Bazel, no internal tooling).

## Supported ROS distro

- ROS 2 Humble (Ubuntu 22.04). Other distros are not validated by CI; they may work but are unsupported.

## Build

```bash
mkdir -p ~/vbot_ws/src
cd ~/vbot_ws/src
git clone https://github.com/VitaDynamics/vbot_ros2_msgs.git
cd ..
rosdep install --from-paths src --ignore-src -r -y
colcon build
source install/setup.bash
```

## Use from your own package

In your downstream `package.xml`:

```xml
<depend>lowlevel_msg</depend>
```

In your downstream `CMakeLists.txt`:

```cmake
find_package(lowlevel_msg REQUIRED)
```

## License

[Apache-2.0](LICENSE).

## Issues and contributions

Please file issues on this repository. For changes to message schemas, open an issue here describing the use case — schema edits land in the internal repository first and are propagated here on the next release.
