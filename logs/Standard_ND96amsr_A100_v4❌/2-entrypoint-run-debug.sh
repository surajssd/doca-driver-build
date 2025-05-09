+ [[ -f /tmp/entrypoint_done ]]
+ timestamp_print 'NVIDIA driver container exec start'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] NVIDIA driver container exec start'
+ echo '[09-May-25_18:13:48] NVIDIA driver container exec start'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] NVIDIA driver container exec start
++ uname -m
+ ARCH=x86_64
++ uname -r
+ FULL_KVER=5.15.0-1087-azure
+ IS_OS_UBUNTU=true
++ grep -i ubuntu /etc/os-release -c
+ [[ 8 == \0 ]]
+ IS_OS_SLES=true
++ grep -i sles /etc/os-release -c
+ [[ 0 == \0 ]]
+ IS_OS_SLES=false
+ RHEL_MAJOR_VERSION=0
+ OPENSHIFT_VERSION=
+ DTK_OCP_BUILD_SCRIPT=/root/dtk_nic_driver_build.sh
+ DTK_OCP_START_COMPILE_FLAG=/mnt/shared-nvidia-nic-driver-toolkit/dtk_start_compile
+ DTK_OCP_DONE_COMPILE_FLAG_PREFIX=/mnt/shared-nvidia-nic-driver-toolkit/dtk_done_compile_
+ DTK_OCP_DONE_COMPILE_FLAG=
+ VENDOR=0x15b3
+ DRIVER_PATH=/sys/bus/pci/drivers/mlx5_core
+ MLX_DRIVERS_MOUNT=/run/mellanox/drivers
+ MLX_UDEV_RULES_FILE=/host/etc/udev/rules.d/77-mlnx-net-names.rules
+ SHARED_KERNEL_HEADERS_DIR=/usr/src/
+ BIND_DELAY_SEC=3
+ DRIVER_READY_FILE=/run/mellanox/drivers/.driver-ready
+ new_driver_loaded=false
+ append_driver_build_flags=
+ pkg_dkms_suffix=
+ found_long_mlx_dev_id_net_name_path=false
+ mlx5_core_loaded=false
++ lsmod
++ grep -i '^mlx5_core' -c
+ [[ 1 != \0 ]]
+ mlx5_core_loaded=true
+ build_src=false
+ build_precompiled=false
+ reuse_driver_inventory=false
+ driver_inventory_path=
+ driver_build_incomplete=false
+ RH_RT_MIN_MAJOR_VER=9
+ declare -a mlx_devs_arr
+ declare -a mlx_vfs_arr
+ declare -a switchdev_representors_arr
+ mlx_dev_record_idx=0
+ true
+ debug_print 'OS is Ubuntu'
+ true
+ timestamp_print OS is Ubuntu
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] OS is Ubuntu'
+ echo '[09-May-25_18:13:48] OS is Ubuntu'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] OS is Ubuntu
+ pkg_dkms_suffix=-dkms
++ cat /etc/os-release
+ debug_print '[os-release]: PRETTY_NAME="Ubuntu' 22.04.5 'LTS"' 'NAME="Ubuntu"' 'VERSION_ID="22.04"' 'VERSION="22.04.5' LTS '(Jammy' 'Jellyfish)"' VERSION_CODENAME=jammy ID=ubuntu ID_LIKE=debian 'HOME_URL="https://www.ubuntu.com/"' 'SUPPORT_URL="https://help.ubuntu.com/"' 'BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"' 'PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"' UBUNTU_CODENAME=jammy
+ true
+ timestamp_print '[os-release]:' 'PRETTY_NAME="Ubuntu' 22.04.5 'LTS"' 'NAME="Ubuntu"' 'VERSION_ID="22.04"' 'VERSION="22.04.5' LTS '(Jammy' 'Jellyfish)"' VERSION_CODENAME=jammy ID=ubuntu ID_LIKE=debian 'HOME_URL="https://www.ubuntu.com/"' 'SUPPORT_URL="https://help.ubuntu.com/"' 'BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"' 'PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"' UBUNTU_CODENAME=jammy
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] [os-release]: PRETTY_NAME="Ubuntu 22.04.5 LTS" NAME="Ubuntu" VERSION_ID="22.04" VERSION="22.04.5 LTS (Jammy Jellyfish)" VERSION_CODENAME=jammy ID=ubuntu ID_LIKE=debian HOME_URL="https://www.ubuntu.com/" SUPPORT_URL="https://help.ubuntu.com/" BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/" PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy" UBUNTU_CODENAME=jammy'
+ echo '[09-May-25_18:13:48] [os-release]: PRETTY_NAME="Ubuntu 22.04.5 LTS" NAME="Ubuntu" VERSION_ID="22.04" VERSION="22.04.5 LTS (Jammy Jellyfish)" VERSION_CODENAME=jammy ID=ubuntu ID_LIKE=debian HOME_URL="https://www.ubuntu.com/" SUPPORT_URL="https://help.ubuntu.com/" BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/" PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy" UBUNTU_CODENAME=jammy'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] [os-release]: PRETTY_NAME="Ubuntu 22.04.5 LTS" NAME="Ubuntu" VERSION_ID="22.04" VERSION="22.04.5 LTS (Jammy Jellyfish)" VERSION_CODENAME=jammy ID=ubuntu ID_LIKE=debian HOME_URL="https://www.ubuntu.com/" SUPPORT_URL="https://help.ubuntu.com/" BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/" PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy" UBUNTU_CODENAME=jammy
++ uname -a
+ debug_print '[uname -a]: Linux' aks-ibnodepool-12699612-vmss000001 5.15.0-1087-azure '#96-Ubuntu' SMP Fri Mar 28 20:31:27 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
+ true
+ timestamp_print '[uname' '-a]:' Linux aks-ibnodepool-12699612-vmss000001 5.15.0-1087-azure '#96-Ubuntu' SMP Fri Mar 28 20:31:27 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] [uname -a]: Linux aks-ibnodepool-12699612-vmss000001 5.15.0-1087-azure #96-Ubuntu SMP Fri Mar 28 20:31:27 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux'
+ echo '[09-May-25_18:13:48] [uname -a]: Linux aks-ibnodepool-12699612-vmss000001 5.15.0-1087-azure #96-Ubuntu SMP Fri Mar 28 20:31:27 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] [uname -a]: Linux aks-ibnodepool-12699612-vmss000001 5.15.0-1087-azure #96-Ubuntu SMP Fri Mar 28 20:31:27 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
++ free -m
+ debug_print '[free -m]: ' total used free shared buff/cache available Mem: 1814258 5287 1804694 3 4276 1802073 Swap: 0 0 0
+ true
+ timestamp_print '[free' '-m]:' total used free shared buff/cache available Mem: 1814258 5287 1804694 3 4276 1802073 Swap: 0 0 0
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] [free -m]: total used free shared buff/cache available Mem: 1814258 5287 1804694 3 4276 1802073 Swap: 0 0 0'
+ echo '[09-May-25_18:13:48] [free -m]: total used free shared buff/cache available Mem: 1814258 5287 1804694 3 4276 1802073 Swap: 0 0 0'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] [free -m]: total used free shared buff/cache available Mem: 1814258 5287 1804694 3 4276 1802073 Swap: 0 0 0
+ '[' -z 25.01-0.6.0.0 ']'
+ timestamp_print 'Container full version: 25.01-0.6.0.0-0'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Container full version: 25.01-0.6.0.0-0'
+ echo '[09-May-25_18:13:48] Container full version: 25.01-0.6.0.0-0'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Container full version: 25.01-0.6.0.0-0
+ unload_blocking_modules
+ debug_print 'Function: unload_blocking_modules'
+ true
+ timestamp_print Function: unload_blocking_modules
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: unload_blocking_modules'
+ echo '[09-May-25_18:13:48] Function: unload_blocking_modules'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: unload_blocking_modules
+ timestamp_print 'Verifying loaded modules will not prevent future driver restart'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Verifying loaded modules will not prevent future driver restart'
+ echo '[09-May-25_18:13:48] Verifying loaded modules will not prevent future driver restart'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Verifying loaded modules will not prevent future driver restart
+ modules_sequence=('nvidia_peermem')
+ for module in ${modules_sequence[@]}
+ debug_print 'Checking if module nvidia_peermem loaded'
+ true
+ timestamp_print Checking if module nvidia_peermem loaded
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Checking if module nvidia_peermem loaded'
+ echo '[09-May-25_18:13:48] Checking if module nvidia_peermem loaded'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Checking if module nvidia_peermem loaded
++ lsmod
++ grep '^nvidia_peermem'
++ awk '{print $3}'
+ ref_cnt=
+ case "$ref_cnt" in
+ debug_print 'Module nvidia_peermem not loaded'
+ true
+ timestamp_print Module nvidia_peermem not loaded
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Module nvidia_peermem not loaded'
+ echo '[09-May-25_18:13:48] Module nvidia_peermem not loaded'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Module nvidia_peermem not loaded
++ lsmod
++ egrep 'ib_isert|nvme_rdma|nvmet_rdma|rpcrdma|xprtrdma|ib_srpt' -c
+ storage_modules_loaded=0
+ false
+ [[ 0 != \0 ]]
+ case "$@" in
+ timestamp_print 'Executing driver sources container'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Executing driver sources container'
+ echo '[09-May-25_18:13:48] Executing driver sources container'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Executing driver sources container
+ '[' -z /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0 ']'
+ debug_print 'Drivers sources path: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0'
+ true
+ timestamp_print Drivers sources path: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Drivers sources path: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0'
+ echo '[09-May-25_18:13:48] Drivers sources path: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Drivers sources path: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0
+ build_src=true
+ [[ ! -z /mnt/drivers-inventory ]]
+ timestamp_print 'Drivers inventory path is set: /mnt/drivers-inventory'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Drivers inventory path is set: /mnt/drivers-inventory'
+ echo '[09-May-25_18:13:48] Drivers inventory path is set: /mnt/drivers-inventory'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Drivers inventory path is set: /mnt/drivers-inventory
+ '[' -d /mnt/drivers-inventory ']'
+ reuse_driver_inventory=true
+ set_driver_readiness 0
+ debug_print 'Function: set_driver_readiness'
+ true
+ timestamp_print Function: set_driver_readiness
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: set_driver_readiness'
+ echo '[09-May-25_18:13:48] Function: set_driver_readiness'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: set_driver_readiness
+ '[' 0 == 1 ']'
+ timestamp_print 'Unsetting driver ready state'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Unsetting driver ready state'
+ echo '[09-May-25_18:13:48] Unsetting driver ready state'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Unsetting driver ready state
+ exec_cmd 'rm -f /run/mellanox/drivers/.driver-ready'
+ debug_print 'Executing command: rm -f /run/mellanox/drivers/.driver-ready'
+ true
+ timestamp_print Executing command: rm -f /run/mellanox/drivers/.driver-ready
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Executing command: rm -f /run/mellanox/drivers/.driver-ready'
+ echo '[09-May-25_18:13:48] Executing command: rm -f /run/mellanox/drivers/.driver-ready'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Executing command: rm -f /run/mellanox/drivers/.driver-ready
++ eval 'rm -f /run/mellanox/drivers/.driver-ready'
+++ rm -f /run/mellanox/drivers/.driver-ready
+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]

+ delete_udev_rules
+ debug_print 'Function: delete_udev_rules'
+ true
+ timestamp_print Function: delete_udev_rules
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: delete_udev_rules'
+ echo '[09-May-25_18:13:48] Function: delete_udev_rules'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: delete_udev_rules
+ '[' -f /host/etc/udev/rules.d/77-mlnx-net-names.rules ']'
+ debug_print 'udev rules file was not previously created, skipping'
+ true
+ timestamp_print udev rules file was not previously created, skipping
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] udev rules file was not previously created, skipping'
+ echo '[09-May-25_18:13:48] udev rules file was not previously created, skipping'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] udev rules file was not previously created, skipping
+ store_devices_conf
+ debug_print 'Function: store_devices_conf'
+ true
+ timestamp_print Function: store_devices_conf
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: store_devices_conf'
+ echo '[09-May-25_18:13:48] Function: store_devices_conf'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: store_devices_conf
+ mlx_dev_record_idx=0
+ vf_record_idx=0
+ representor_record_idx=0
+ found_sriov_conf=0
+ true
+ find_mlx_devs
+ debug_print 'Function: find_mlx_devs'
+ true
+ timestamp_print Function: find_mlx_devs
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: find_mlx_devs'
+ echo '[09-May-25_18:13:48] Function: find_mlx_devs'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: find_mlx_devs
+ for netdev_path in /sys/class/net/*
+ grep 0x15b3 /sys/class/net/azv24f10a63431/device/vendor
+ for netdev_path in /sys/class/net/*
+ grep 0x15b3 /sys/class/net/enP53403s1/device/vendor
+ debug_print 'Fetching device info for: /sys/class/net/enP53403s1'
+ true
+ timestamp_print Fetching device info for: /sys/class/net/enP53403s1
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Fetching device info for: /sys/class/net/enP53403s1'
+ echo '[09-May-25_18:13:48] Fetching device info for: /sys/class/net/enP53403s1'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Fetching device info for: /sys/class/net/enP53403s1
+++ readlink /sys/class/net/enP53403s1/device
++ basename ../../../d09b:00:02.0
+ pci_addr=d09b:00:02.0
+ [[ -n d09b:00:02.0 ]]
++ basename /sys/class/net/enP53403s1
+ dev_name=enP53403s1
+ [[ -n enP53403s1 ]]
++ cat /sys/class/net/enP53403s1/flags
+ dev_adminstate_flags=1
+ [[ -n 1 ]]
++ [[ 1 -eq 1 ]]
++ echo up
+ dev_adminstate=up
++ cat /sys/class/net/enP53403s1/mtu
+ dev_mtu=1500
+ [[ -n 1500 ]]
+ dev_type=
+ dev_guid=
+ [[ -e /sys/class/net/enP53403s1/device/sriov_numvfs ]]
+ pf_numvfs=0
+ [[ enP53403s1 =~ ^ib.* ]]
+ dev_type=eth
+ dev_guid=-
++ devlink dev eswitch show pci/d09b:00:02.0
++ awk '{for (i=1; i<=NF; i++) if ($i == "mode") {print $(i+1); exit}}'
+ eswitch_mode=
+ '[' '' == switchdev ']'
+ dev_record='d09b:00:02.0 eth enP53403s1 up 1500 0 - '
+ debug_print 'Storing device record [0] d09b:00:02.0 eth enP53403s1 up 1500 0 - '
+ true
+ timestamp_print Storing device record '[0]' d09b:00:02.0 eth enP53403s1 up 1500 0 -
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Storing device record [0] d09b:00:02.0 eth enP53403s1 up 1500 0 -'
+ echo '[09-May-25_18:13:48] Storing device record [0] d09b:00:02.0 eth enP53403s1 up 1500 0 -'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Storing device record [0] d09b:00:02.0 eth enP53403s1 up 1500 0 -
+ mlx_devs_arr[${mlx_dev_record_idx}]='d09b:00:02.0 eth enP53403s1 up 1500 0 - '
+ mlx_dev_record_idx=1
+ false
++ udevadm info --query=property /sys/class/net/enP53403s1
++ grep ID_NET_NAME_PATH
++ cut -d= -f 2
+ mlx_dev_id_net_name_path=enP53403p0s2
+ debug_print 'Sampling interface for ID_NET_NAME_PATH: /sys/class/net/enP53403s1 => enP53403p0s2'
+ true
+ timestamp_print Sampling interface for ID_NET_NAME_PATH: /sys/class/net/enP53403s1 '=>' enP53403p0s2
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Sampling interface for ID_NET_NAME_PATH: /sys/class/net/enP53403s1 => enP53403p0s2'
+ echo '[09-May-25_18:13:48] Sampling interface for ID_NET_NAME_PATH: /sys/class/net/enP53403s1 => enP53403p0s2'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Sampling interface for ID_NET_NAME_PATH: /sys/class/net/enP53403s1 => enP53403p0s2
+ [[ enP53403p0s2 =~ np[0-3]$ ]]
+ for netdev_path in /sys/class/net/*
+ grep 0x15b3 /sys/class/net/eth0/device/vendor
+ for netdev_path in /sys/class/net/*
+ grep 0x15b3 /sys/class/net/lo/device/vendor
+ find_mlx_vfs
+ debug_print 'Function: find_mlx_vfs'
+ true
+ timestamp_print Function: find_mlx_vfs
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: find_mlx_vfs'
+ echo '[09-May-25_18:13:48] Function: find_mlx_vfs'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: find_mlx_vfs
+ num_mlx_devices=1
+ timestamp_print 'Query VFs info from [1] devices'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Query VFs info from [1] devices'
+ echo '[09-May-25_18:13:48] Query VFs info from [1] devices'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Query VFs info from [1] devices
+ '[' 1 -gt 0 ']'
+ mlx_dev_info=('d09b:00:02.0' 'eth' 'enP53403s1' 'up' '1500' '0' '-')
+ declare -a mlx_dev_info
+ mlnx_dev_pci=d09b:00:02.0
+ mlnx_dev_type=eth
+ mlnx_dev_name=enP53403s1
+ mlnx_dev_numvfs=0
+ mlnx_dev_eswitch_mode=
+ '[' 0 == 0 ']'
+ debug_print 'Device enP53403s1 does not have open VFs, skipping'
+ true
+ timestamp_print Device enP53403s1 does not have open VFs, skipping
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Device enP53403s1 does not have open VFs, skipping'
+ echo '[09-May-25_18:13:48] Device enP53403s1 does not have open VFs, skipping'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Device enP53403s1 does not have open VFs, skipping
+ num_mlx_devices=0
+ continue
+ '[' 0 -gt 0 ']'
+ find_switchdev_representors
+ debug_print 'Function: find_switchdev_representors'
+ true
+ timestamp_print Function: find_switchdev_representors
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: find_switchdev_representors'
+ echo '[09-May-25_18:13:48] Function: find_switchdev_representors'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: find_switchdev_representors
+ num_mlx_devices=1
+ timestamp_print 'Query representors info from [1] devices'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Query representors info from [1] devices'
+ echo '[09-May-25_18:13:48] Query representors info from [1] devices'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Query representors info from [1] devices
+ '[' 1 -gt 0 ']'
+ mlx_dev_info=('d09b:00:02.0' 'eth' 'enP53403s1' 'up' '1500' '0' '-')
+ declare -a mlx_dev_info
+ mlnx_dev_pci=d09b:00:02.0
+ mlnx_dev_name=enP53403s1
+ mlnx_dev_numvfs=0
+ mlnx_dev_eswitch_mode=
+ '[' '' '!=' switchdev ']'
+ debug_print 'Device enP53403s1 is not in switchdev mode, skipping'
+ true
+ timestamp_print Device enP53403s1 is not in switchdev mode, skipping
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Device enP53403s1 is not in switchdev mode, skipping'
+ echo '[09-May-25_18:13:48] Device enP53403s1 is not in switchdev mode, skipping'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Device enP53403s1 is not in switchdev mode, skipping
+ num_mlx_devices=0
+ continue
+ '[' 0 -gt 0 ']'
+ '[' true = true ']'
+ '[' 1 -gt 0 ']'
+ false
+ create_udev_rules
+ debug_print 'Function: create_udev_rules'
+ true
+ timestamp_print Function: create_udev_rules
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: create_udev_rules'
+ echo '[09-May-25_18:13:48] Function: create_udev_rules'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: create_udev_rules
+ echo 'ACTION!="add", GOTO="mlnx_ofed_name_end"
SUBSYSTEM!="net", GOTO="mlnx_ofed_name_end"

# Rename physical interfaces (first case) of virtual functions (second case).
# Example names:
# enp8s0f0np0 -> enp8s0f0
# enp8s0f0np1v12 -> enp8s0f0v12

DRIVERS=="mlx5_core", ENV{ID_NET_NAME_PATH}!="", \
PROGRAM="/bin/sh -c '\''echo $env{ID_NET_NAME_PATH} | sed -r -e s/np[01]$// -e s/np[01]v/v/'\''", \
        ENV{ID_NET_NAME_PATH}="$result"

DRIVERS=="mlx5_core", ENV{ID_NET_NAME_SLOT}!="", \
PROGRAM="/bin/sh -c '\''echo $env{ID_NET_NAME_SLOT} | sed -r -e s/np[01]$// -e s/np[01]v/v/'\''", \
        ENV{ID_NET_NAME_SLOT}="$result"

LABEL="mlnx_ofed_name_end"
'
+ debug_print 'Short interface name exposed by old driver, injected udev rules file /host/etc/udev/rules.d/77-mlnx-net-names.rules'
+ true
+ timestamp_print Short interface name exposed by old driver, injected udev rules file /host/etc/udev/rules.d/77-mlnx-net-names.rules
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Short interface name exposed by old driver, injected udev rules file /host/etc/udev/rules.d/77-mlnx-net-names.rules'
+ echo '[09-May-25_18:13:48] Short interface name exposed by old driver, injected udev rules file /host/etc/udev/rules.d/77-mlnx-net-names.rules'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Short interface name exposed by old driver, injected udev rules file /host/etc/udev/rules.d/77-mlnx-net-names.rules
++ cat /host/etc/udev/rules.d/77-mlnx-net-names.rules
+ debug_print 'ACTION!="add",' 'GOTO="mlnx_ofed_name_end"' 'SUBSYSTEM!="net",' 'GOTO="mlnx_ofed_name_end"' '#' Rename physical interfaces '(first' 'case)' of virtual functions '(second' 'case).' '#' Example names: '#' enp8s0f0np0 '->' enp8s0f0 '#' enp8s0f0np1v12 '->' enp8s0f0v12 'DRIVERS=="mlx5_core",' 'ENV{ID_NET_NAME_PATH}!="",' '\' 'PROGRAM="/bin/sh' -c ''\''echo' '$env{ID_NET_NAME_PATH}' '|' sed -r -e 's/np[01]$//' -e 's/np[01]v/v/'\''",' '\' 'ENV{ID_NET_NAME_PATH}="$result"' 'DRIVERS=="mlx5_core",' 'ENV{ID_NET_NAME_SLOT}!="",' '\' 'PROGRAM="/bin/sh' -c ''\''echo' '$env{ID_NET_NAME_SLOT}' '|' sed -r -e 's/np[01]$//' -e 's/np[01]v/v/'\''",' '\' 'ENV{ID_NET_NAME_SLOT}="$result"' 'LABEL="mlnx_ofed_name_end"'
+ true
+ timestamp_print 'ACTION!="add",' 'GOTO="mlnx_ofed_name_end"' 'SUBSYSTEM!="net",' 'GOTO="mlnx_ofed_name_end"' '#' Rename physical interfaces '(first' 'case)' of virtual functions '(second' 'case).' '#' Example names: '#' enp8s0f0np0 '->' enp8s0f0 '#' enp8s0f0np1v12 '->' enp8s0f0v12 'DRIVERS=="mlx5_core",' 'ENV{ID_NET_NAME_PATH}!="",' '\' 'PROGRAM="/bin/sh' -c ''\''echo' '$env{ID_NET_NAME_PATH}' '|' sed -r -e 's/np[01]$//' -e 's/np[01]v/v/'\''",' '\' 'ENV{ID_NET_NAME_PATH}="$result"' 'DRIVERS=="mlx5_core",' 'ENV{ID_NET_NAME_SLOT}!="",' '\' 'PROGRAM="/bin/sh' -c ''\''echo' '$env{ID_NET_NAME_SLOT}' '|' sed -r -e 's/np[01]$//' -e 's/np[01]v/v/'\''",' '\' 'ENV{ID_NET_NAME_SLOT}="$result"' 'LABEL="mlnx_ofed_name_end"'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] ACTION!="add", GOTO="mlnx_ofed_name_end" SUBSYSTEM!="net", GOTO="mlnx_ofed_name_end" # Rename physical interfaces (first case) of virtual functions (second case). # Example names: # enp8s0f0np0 -> enp8s0f0 # enp8s0f0np1v12 -> enp8s0f0v12 DRIVERS=="mlx5_core", ENV{ID_NET_NAME_PATH}!="", \ PROGRAM="/bin/sh -c '\''echo $env{ID_NET_NAME_PATH} | sed -r -e s/np[01]$// -e s/np[01]v/v/'\''", \ ENV{ID_NET_NAME_PATH}="$result" DRIVERS=="mlx5_core", ENV{ID_NET_NAME_SLOT}!="", \ PROGRAM="/bin/sh -c '\''echo $env{ID_NET_NAME_SLOT} | sed -r -e s/np[01]$// -e s/np[01]v/v/'\''", \ ENV{ID_NET_NAME_SLOT}="$result" LABEL="mlnx_ofed_name_end"'
+ echo '[09-May-25_18:13:48] ACTION!="add", GOTO="mlnx_ofed_name_end" SUBSYSTEM!="net", GOTO="mlnx_ofed_name_end" # Rename physical interfaces (first case) of virtual functions (second case). # Example names: # enp8s0f0np0 -> enp8s0f0 # enp8s0f0np1v12 -> enp8s0f0v12 DRIVERS=="mlx5_core", ENV{ID_NET_NAME_PATH}!="", \ PROGRAM="/bin/sh -c '\''echo $env{ID_NET_NAME_PATH} | sed -r -e s/np[01]$// -e s/np[01]v/v/'\''", \ ENV{ID_NET_NAME_PATH}="$result" DRIVERS=="mlx5_core", ENV{ID_NET_NAME_SLOT}!="", \ PROGRAM="/bin/sh -c '\''echo $env{ID_NET_NAME_SLOT} | sed -r -e s/np[01]$// -e s/np[01]v/v/'\''", \ ENV{ID_NET_NAME_SLOT}="$result" LABEL="mlnx_ofed_name_end"'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] ACTION!="add", GOTO="mlnx_ofed_name_end" SUBSYSTEM!="net", GOTO="mlnx_ofed_name_end" # Rename physical interfaces (first case) of virtual functions (second case). # Example names: # enp8s0f0np0 -> enp8s0f0 # enp8s0f0np1v12 -> enp8s0f0v12 DRIVERS=="mlx5_core", ENV{ID_NET_NAME_PATH}!="", \ PROGRAM="/bin/sh -c 'echo $env{ID_NET_NAME_PATH} | sed -r -e s/np[01]$// -e s/np[01]v/v/'", \ ENV{ID_NET_NAME_PATH}="$result" DRIVERS=="mlx5_core", ENV{ID_NET_NAME_SLOT}!="", \ PROGRAM="/bin/sh -c 'echo $env{ID_NET_NAME_SLOT} | sed -r -e s/np[01]$// -e s/np[01]v/v/'", \ ENV{ID_NET_NAME_SLOT}="$result" LABEL="mlnx_ofed_name_end"
+ trap terminate_event SIGSTOP SIGINT SIGTERM EXIT
+ false
+ build_driver
+ debug_print 'Function: build_driver'
+ true
+ timestamp_print Function: build_driver
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: build_driver'
+ echo '[09-May-25_18:13:48] Function: build_driver'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: build_driver
+ true
+ driver_inventory_path=/mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
+ checksum_path=/mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0.checksum
+ '[' -d /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0 ']'
+ exec_cmd 'mkdir -p /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ debug_print 'Executing command: mkdir -p /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ true
+ timestamp_print Executing command: mkdir -p /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Executing command: mkdir -p /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ echo '[09-May-25_18:13:48] Executing command: mkdir -p /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Executing command: mkdir -p /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
++ eval 'mkdir -p /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+++ mkdir -p /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0

+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]
+ debug_print 'Driver modules dest path: /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ true
+ timestamp_print Driver modules dest path: /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Driver modules dest path: /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ echo '[09-May-25_18:13:48] Driver modules dest path: /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Driver modules dest path: /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
+ driver_build_incomplete=true
+ set_append_driver_build_flags
+ debug_print 'Function: set_append_driver_build_flags'
+ true
+ timestamp_print Function: set_append_driver_build_flags
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: set_append_driver_build_flags'
+ echo '[09-May-25_18:13:48] Function: set_append_driver_build_flags'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: set_append_driver_build_flags
+ [[ false = false ]]
+ append_driver_build_flags=' --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms'
+ '[' false == true ']'
+ true
+ true
+ ubuntu_install_prerequisites
+ debug_print 'Function: ubuntu_install_prerequisites'
+ true
+ timestamp_print Function: ubuntu_install_prerequisites
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Function: ubuntu_install_prerequisites'
+ echo '[09-May-25_18:13:48] Function: ubuntu_install_prerequisites'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Function: ubuntu_install_prerequisites
+ [[ 5.15.0-1087-azure =~ realtime ]]
+ exec_cmd 'apt-get update'
+ debug_print 'Executing command: apt-get update'
+ true
+ timestamp_print Executing command: apt-get update
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:48
+ msg='[09-May-25_18:13:48] Executing command: apt-get update'
+ echo '[09-May-25_18:13:48] Executing command: apt-get update'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:48] Executing command: apt-get update
++ eval 'apt-get update'
+++ apt-get update
+ output='Get:1 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:5 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [2901 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
Get:9 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [47.7 kB]
Get:10 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [4282 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]
Get:12 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1245 kB]
Get:1 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:5 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [2901 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [55.7 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [3211 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1546 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [4436 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [35.2 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [83.2 kB]
Fetched 38.2 MB in 2s (18.5 MB/s)
Reading package lists...'
+ exit_code=0
+ echo 'Get:1 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:5 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [2901 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
Get:9 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [47.7 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
Get:10 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [4282 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]
Get:9 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [47.7 kB]
Get:12 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1245 kB]
Get:10 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [4282 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [55.7 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [3211 kB]
Get:12 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1245 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1546 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [55.7 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [3211 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1546 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [4436 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [35.2 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [83.2 kB]
Fetched 38.2 MB in 2s (18.5 MB/s)
Reading package lists...
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [4436 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [35.2 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [83.2 kB]
Fetched 38.2 MB in 2s (18.5 MB/s)
Reading package lists...'
+ [[ 0 -ne 0 ]]
+ exec_cmd 'apt-get -yq install pkg-config linux-headers-5.15.0-1087-azure'
+ debug_print 'Executing command: apt-get -yq install pkg-config linux-headers-5.15.0-1087-azure'
+ true
+ timestamp_print Executing command: apt-get -yq install pkg-config linux-headers-5.15.0-1087-azure
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:51
+ msg='[09-May-25_18:13:51] Executing command: apt-get -yq install pkg-config linux-headers-5.15.0-1087-azure'
+ echo '[09-May-25_18:13:51] Executing command: apt-get -yq install pkg-config linux-headers-5.15.0-1087-azure'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:51] Executing command: apt-get -yq install pkg-config linux-headers-5.15.0-1087-azure
++ eval 'apt-get -yq install pkg-config linux-headers-5.15.0-1087-azure'
+++ apt-get -yq install pkg-config linux-headers-5.15.0-1087-azure
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
dpkg-preconfigure: unable to re-open stdin:
+ output='Reading package lists...
Building dependency tree...
Reading state information...
pkg-config is already the newest version (0.29.2-1ubuntu3).
The following NEW packages will be installed:
  linux-azure-headers-5.15.0-1087 linux-headers-5.15.0-1087-azure
0 upgraded, 2 newly installed, 0 to remove and 38 not upgraded.
Need to get 14.9 MB of archives.
After this operation, 102 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-azure-headers-5.15.0-1087 all 5.15.0-1087.96 [12.3 MB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-headers-5.15.0-1087-azure amd64 5.15.0-1087.96 [2624 kB]
Fetched 14.9 MB in 2s (8738 kB/s)
Selecting previously unselected package linux-azure-headers-5.15.0-1087.
(Reading database ...
(Reading database ... 5%
(Reading database ... 10%
(Reading database ... 15%
(Reading database ... 20%
(Reading database ... 25%
(Reading database ... 30%
(Reading database ... 35%
(Reading database ... 40%
(Reading database ... 45%
(Reading database ... 50%
(Reading database ... 55%
(Reading database ... 60%
(Reading database ... 65%
(Reading database ... 70%
(Reading database ... 75%
(Reading database ... 80%
(Reading database ... 85%
(Reading database ... 90%
(Reading database ... 95%
(Reading database ... 100%
(Reading database ... 46485 files and directories currently installed.)
Preparing to unpack .../linux-azure-headers-5.15.0-1087_5.15.0-1087.96_all.deb ...
Unpacking linux-azure-headers-5.15.0-1087 (5.15.0-1087.96) ...
Selecting previously unselected package linux-headers-5.15.0-1087-azure.
Preparing to unpack .../linux-headers-5.15.0-1087-azure_5.15.0-1087.96_amd64.deb ...
Unpacking linux-headers-5.15.0-1087-azure (5.15.0-1087.96) ...
Setting up linux-azure-headers-5.15.0-1087 (5.15.0-1087.96) ...
Setting up linux-headers-5.15.0-1087-azure (5.15.0-1087.96) ...
/etc/kernel/header_postinst.d/dkms:
 * dkms: running auto installation service for kernel 5.15.0-1087-azure
   ...done.
'
+ exit_code=0
+ echo 'Reading package lists...
Building dependency tree...
Reading state information...
pkg-config is already the newest version (0.29.2-1ubuntu3).
The following NEW packages will be installed:
  linux-azure-headers-5.15.0-1087 linux-headers-5.15.0-1087-azure
0 upgraded, 2 newly installed, 0 to remove and 38 not upgraded.
Need to get 14.9 MB of archives.
After this operation, 102 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-azure-headers-5.15.0-1087 all 5.15.0-1087.96 [12.3 MB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-headers-5.15.0-1087-azure amd64 5.15.0-1087.96 [2624 kB]
Fetched 14.9 MB in 2s (8738 kB/s)
Selecting previously unselected package linux-azure-headers-5.15.0-1087.
(Reading database ...
(Reading database ... 5%
(Reading database ... 10%
(Reading database ... 15%
(Reading database ... 20%
(Reading database ... 25%
(Reading database ... 30%
(Reading database ... 35%
(Reading database ... 40%
(Reading database ... 45%
(Reading database ... 50%
(Reading database ... 55%
(Reading database ... 60%
(Reading database ... 65%
(Reading database ... 70%
(Reading database ... 75%
(Reading database ... 80%
(Reading database ... 85%
(Reading database ... 90%
(Reading database ... 95%
(Reading database ... 100%
(Reading database ... 46485 files and directories currently installed.)
Preparing to unpack .../linux-azure-headers-5.15.0-1087_5.15.0-1087.96_all.deb ...
Unpacking linux-azure-headers-5.15.0-1087 (5.15.0-1087.96) ...
Selecting previously unselected package linux-headers-5.15.0-1087-azure.
Preparing to unpack .../linux-headers-5.15.0-1087-azure_5.15.0-1087.96_amd64.deb ...
Unpacking linux-headers-5.15.0-1087-azure (5.15.0-1087.96) ...
Setting up linux-azure-headers-5.15.0-1087 (5.15.0-1087.96) ...
Reading package lists...
Building dependency tree...
Reading state information...
pkg-config is already the newest version (0.29.2-1ubuntu3).
The following NEW packages will be installed:
  linux-azure-headers-5.15.0-1087 linux-headers-5.15.0-1087-azure
0 upgraded, 2 newly installed, 0 to remove and 38 not upgraded.
Need to get 14.9 MB of archives.
After this operation, 102 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-azure-headers-5.15.0-1087 all 5.15.0-1087.96 [12.3 MB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-headers-5.15.0-1087-azure amd64 5.15.0-1087.96 [2624 kB]
Fetched 14.9 MB in 2s (8738 kB/s)
Selecting previously unselected package linux-azure-headers-5.15.0-1087.
(Reading database ...
(Reading database ... 5%
(Reading database ... 10%
(Reading database ... 15%
(Reading database ... 20%
(Reading database ... 25%
(Reading database ... 30%
(Reading database ... 35%
(Reading database ... 40%
(Reading database ... 45%
(Reading database ... 50%
(Reading database ... 55%
(Reading database ... 60%
(Reading database ... 65%
(Reading database ... 70%
(Reading database ... 75%
(Reading database ... 80%
(Reading database ... 85%
(Reading database ... 90%
(Reading database ... 95%
(Reading database ... 100%
(Reading database ... 46485 files and directories currently installed.)
Preparing to unpack .../linux-azure-headers-5.15.0-1087_5.15.0-1087.96_all.deb ...
Unpacking linux-azure-headers-5.15.0-1087 (5.15.0-1087.96) ...
Selecting previously unselected package linux-headers-5.15.0-1087-azure.
Preparing to unpack .../linux-headers-5.15.0-1087-azure_5.15.0-1087.96_amd64.deb ...
Unpacking linux-headers-5.15.0-1087-azure (5.15.0-1087.96) ...
Setting up linux-azure-headers-5.15.0-1087 (5.15.0-1087.96) ...
Setting up linux-headers-5.15.0-1087-azure (5.15.0-1087.96) ...
Setting up linux-headers-5.15.0-1087-azure (5.15.0-1087.96) ...
/etc/kernel/header_postinst.d/dkms:
 * dkms: running auto installation service for kernel 5.15.0-1087-azure
   ...done.
'
/etc/kernel/header_postinst.d/dkms:
 * dkms: running auto installation service for kernel 5.15.0-1087-azure
   ...done.
+ [[ 0 -ne 0 ]]
+ build_driver_from_src
+ debug_print 'Function: build_driver_from_src'
+ true
+ timestamp_print Function: build_driver_from_src
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:58
+ msg='[09-May-25_18:13:58] Function: build_driver_from_src'
+ echo '[09-May-25_18:13:58] Function: build_driver_from_src'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:58] Function: build_driver_from_src
+ sub_path_str=RPMS
+ os_str=redhat
+ package_type=rpm
+ append_driver_build_flags=' --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp'
+ true
+ sub_path_str=DEBS
+ os_str=ubuntu
+ package_type=deb
+ append_driver_build_flags=' --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms'
+ false
+ timestamp_print 'Starting driver build'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:58
+ msg='[09-May-25_18:13:58] Starting driver build'
+ echo '[09-May-25_18:13:58] Starting driver build'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:58] Starting driver build
+ exec_cmd '/run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/install.pl --without-depcheck --kernel 5.15.0-1087-azure --kernel-only --build-only --with-mlnx-tools --without-knem-dkms --without-iser-dkms --without-isert-dkms --without-srp-dkms --without-kernel-mft-dkms --without-mlnx-rdma-rxe-dkms  --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms'
+ debug_print 'Executing command: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/install.pl --without-depcheck --kernel 5.15.0-1087-azure --kernel-only --build-only --with-mlnx-tools --without-knem-dkms --without-iser-dkms --without-isert-dkms --without-srp-dkms --without-kernel-mft-dkms --without-mlnx-rdma-rxe-dkms  --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms'
+ true
+ timestamp_print Executing command: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/install.pl --without-depcheck --kernel 5.15.0-1087-azure --kernel-only --build-only --with-mlnx-tools --without-knem-dkms --without-iser-dkms --without-isert-dkms --without-srp-dkms --without-kernel-mft-dkms --without-mlnx-rdma-rxe-dkms --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:13:58
+ msg='[09-May-25_18:13:58] Executing command: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/install.pl --without-depcheck --kernel 5.15.0-1087-azure --kernel-only --build-only --with-mlnx-tools --without-knem-dkms --without-iser-dkms --without-isert-dkms --without-srp-dkms --without-kernel-mft-dkms --without-mlnx-rdma-rxe-dkms --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms'
+ echo '[09-May-25_18:13:58] Executing command: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/install.pl --without-depcheck --kernel 5.15.0-1087-azure --kernel-only --build-only --with-mlnx-tools --without-knem-dkms --without-iser-dkms --without-isert-dkms --without-srp-dkms --without-kernel-mft-dkms --without-mlnx-rdma-rxe-dkms --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:13:58] Executing command: /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/install.pl --without-depcheck --kernel 5.15.0-1087-azure --kernel-only --build-only --with-mlnx-tools --without-knem-dkms --without-iser-dkms --without-isert-dkms --without-srp-dkms --without-kernel-mft-dkms --without-mlnx-rdma-rxe-dkms --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms
++ eval '/run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/install.pl --without-depcheck --kernel 5.15.0-1087-azure --kernel-only --build-only --with-mlnx-tools --without-knem-dkms --without-iser-dkms --without-isert-dkms --without-srp-dkms --without-kernel-mft-dkms --without-mlnx-rdma-rxe-dkms  --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms'
+++ /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/install.pl --without-depcheck --kernel 5.15.0-1087-azure --kernel-only --build-only --with-mlnx-tools --without-knem-dkms --without-iser-dkms --without-isert-dkms --without-srp-dkms --without-kernel-mft-dkms --without-mlnx-rdma-rxe-dkms --without-mlnx-nfsrdma-dkms --without-mlnx-nvme-dkms --disable-kmp --without-dkms
Logs dir: /tmp/OFED.462.logs
General log file: /tmp/OFED.462.logs/general.log
+ output='[33mUnsupported package: kmp[0m
[32m
[33mUnsupported package: kmp[0m
[32m
Below is the list of OFED packages that you have chosen

(some may have been added by the installer due to package dependencies):
[0m
mlnx-tools
mlnx-ofed-kernel-utils
mlnx-ofed-kernel-modules
iser-modules
isert-modules
srp-modules
mlnx-nfsrdma-modules
mlnx-nvme-modules
kernel-mft-modules
knem-modules
xpmem
xpmem-modules

This program will install the OFED package on your machine.
Note that all other Mellanox, OEM, OFED, RDMA or Distribution IB packages will be removed.
Those packages are removed due to conflicts with OFED, do not reinstall them.

Installing new packages
Building DEB for mlnx-tools-25.01 (mlnx-tools)...
Running  /usr/bin/dpkg-buildpackage -us -uc
Building DEB for mlnx-ofed-kernel-utils-25.01.OFED.25.01.0.6.0.1 (mlnx-ofed-kernel)...

Below is the list of OFED packages that you have chosen

(some may have been added by the installer due to package dependencies):
[0m
-W- --with-mlx5-ipsec is enabled
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Extracting mlnx-ofed-kernel sources to /var/tmp/ofed_src ...
dpkg -x '/run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb' /var/tmp/ofed_src >/dev/null
Building DEB for iser-modules-25.01.OFED.25.01.0.6.0.1 (iser)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for isert-modules-25.01.OFED.25.01.0.6.0.1 (isert)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for srp-modules-25.01.OFED.25.01.0.6.0.1 (srp)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for mlnx-nfsrdma-modules-25.01.OFED.25.01.0.6.0.1 (mlnx-nfsrdma)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for mlnx-nvme-modules-25.01.OFED.25.01.0.6.0.1 (mlnx-nvme)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for kernel-mft-modules-4.31.0.149 (kernel-mft)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for knem-modules-1.1.4.90mlnx3 (knem)...
mlnx-tools
mlnx-ofed-kernel-utils
mlnx-ofed-kernel-modules
iser-modules
isert-modules
srp-modules
mlnx-nfsrdma-modules
mlnx-nvme-modules
kernel-mft-modules
knem-modules
xpmem
xpmem-modules

This program will install the OFED package on your machine.
Note that all other Mellanox, OEM, OFED, RDMA or Distribution IB packages will be removed.
Those packages are removed due to conflicts with OFED, do not reinstall them.

Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for xpmem-2.7.4 (xpmem)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
[32mBuild passed successfully[0m
Installing new packages
Building DEB for mlnx-tools-25.01 (mlnx-tools)...
Running  /usr/bin/dpkg-buildpackage -us -uc
Building DEB for mlnx-ofed-kernel-utils-25.01.OFED.25.01.0.6.0.1 (mlnx-ofed-kernel)...

-W- --with-mlx5-ipsec is enabled
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Extracting mlnx-ofed-kernel sources to /var/tmp/ofed_src ...
dpkg -x '\''/run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb'\'' /var/tmp/ofed_src >/dev/null
Building DEB for iser-modules-25.01.OFED.25.01.0.6.0.1 (iser)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for isert-modules-25.01.OFED.25.01.0.6.0.1 (isert)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for srp-modules-25.01.OFED.25.01.0.6.0.1 (srp)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for mlnx-nfsrdma-modules-25.01.OFED.25.01.0.6.0.1 (mlnx-nfsrdma)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for mlnx-nvme-modules-25.01.OFED.25.01.0.6.0.1 (mlnx-nvme)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for kernel-mft-modules-4.31.0.149 (kernel-mft)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for knem-modules-1.1.4.90mlnx3 (knem)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for xpmem-2.7.4 (xpmem)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
[32mBuild passed successfully[0m'
+ exit_code=0
+ echo '[33mUnsupported package: kmp[0m
[32m
Below is the list of OFED packages that you have chosen

(some may have been added by the installer due to package dependencies):
[0m
mlnx-tools
mlnx-ofed-kernel-utils
mlnx-ofed-kernel-modules
iser-modules
isert-modules
srp-modules
mlnx-nfsrdma-modules
mlnx-nvme-modules
kernel-mft-modules
knem-modules
xpmem
xpmem-modules

This program will install the OFED package on your machine.
Note that all other Mellanox, OEM, OFED, RDMA or Distribution IB packages will be removed.
Those packages are removed due to conflicts with OFED, do not reinstall them.

Installing new packages
Building DEB for mlnx-tools-25.01 (mlnx-tools)...
Running  /usr/bin/dpkg-buildpackage -us -uc
Building DEB for mlnx-ofed-kernel-utils-25.01.OFED.25.01.0.6.0.1 (mlnx-ofed-kernel)...

-W- --with-mlx5-ipsec is enabled
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Extracting mlnx-ofed-kernel sources to /var/tmp/ofed_src ...
dpkg -x '\''/run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb'\'' /var/tmp/ofed_src >/dev/null
Building DEB for iser-modules-25.01.OFED.25.01.0.6.0.1 (iser)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for isert-modules-25.01.OFED.25.01.0.6.0.1 (isert)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for srp-modules-25.01.OFED.25.01.0.6.0.1 (srp)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for mlnx-nfsrdma-modules-25.01.OFED.25.01.0.6.0.1 (mlnx-nfsrdma)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for mlnx-nvme-modules-25.01.OFED.25.01.0.6.0.1 (mlnx-nvme)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for kernel-mft-modules-4.31.0.149 (kernel-mft)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for knem-modules-1.1.4.90mlnx3 (knem)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
Building DEB for xpmem-2.7.4 (xpmem)...
Running  /usr/bin/dpkg-buildpackage -us -uc  -Pmodules
[32mBuild passed successfully[0m'
+ [[ 0 -ne 0 ]]
+ '[' true ']'
+ exec_cmd 'cp /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu*/x86_64/*.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ debug_print 'Executing command: cp /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu*/x86_64/*.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ true
+ timestamp_print Executing command: cp /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-tools_25.01-0.2501060_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:29
+ msg='[09-May-25_18:17:29] Executing command: cp /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-tools_25.01-0.2501060_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ echo '[09-May-25_18:17:29] Executing command: cp /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-tools_25.01-0.2501060_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:29] Executing command: cp /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-tools_25.01-0.2501060_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
++ eval 'cp /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu*/x86_64/*.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+++ cp /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/mlnx-tools_25.01-0.2501060_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /run/mellanox/src/MLNX_OFED_SRC-25.01-0.6.0.0/DEBS/ubuntu22.04/x86_64/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]

+ timestamp_print 'Stored driver packages at /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:29
+ msg='[09-May-25_18:17:29] Stored driver packages at /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ echo '[09-May-25_18:17:29] Stored driver packages at /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:29] Stored driver packages at /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0
+ fix_src_link
+ debug_print 'Function: fix_src_link'
+ true
+ timestamp_print Function: fix_src_link
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:29
+ msg='[09-May-25_18:17:29] Function: fix_src_link'
+ echo '[09-May-25_18:17:29] Function: fix_src_link'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:29] Function: fix_src_link
++ readlink /usr/src/ofa_kernel/default
+ local target=
+ [[ -e /usr/src/ofa_kernel/x86_64/5.15.0-1087-azure ]]
+ true
++ calculate_driver_inventory_md5_checksum
++ find /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0 -type f -exec md5sum '{}' +
++ md5sum
++ awk '{ print $1 }'
+ current_checksum=b21f5a20d2af881ed021fa29b715fa83
+ timestamp_print 'Storing the check sum for build artifacts at /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0.checksum, check sum: b21f5a20d2af881ed021fa29b715fa83'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:29
+ msg='[09-May-25_18:17:29] Storing the check sum for build artifacts at /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0.checksum, check sum: b21f5a20d2af881ed021fa29b715fa83'
+ echo '[09-May-25_18:17:29] Storing the check sum for build artifacts at /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0.checksum, check sum: b21f5a20d2af881ed021fa29b715fa83'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:29] Storing the check sum for build artifacts at /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0.checksum, check sum: b21f5a20d2af881ed021fa29b715fa83
+ echo b21f5a20d2af881ed021fa29b715fa83
+ driver_build_incomplete=false
+ install_driver
+ debug_print 'Function: install_driver'
+ true
+ timestamp_print Function: install_driver
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:29
+ msg='[09-May-25_18:17:29] Function: install_driver'
+ echo '[09-May-25_18:17:29] Function: install_driver'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:29] Function: install_driver
+ [[ ! -d /lib/modules/5.15.0-1087-azure ]]
+ exec_cmd 'touch /lib/modules/5.15.0-1087-azure/modules.order'
+ debug_print 'Executing command: touch /lib/modules/5.15.0-1087-azure/modules.order'
+ true
+ timestamp_print Executing command: touch /lib/modules/5.15.0-1087-azure/modules.order
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:29
+ msg='[09-May-25_18:17:29] Executing command: touch /lib/modules/5.15.0-1087-azure/modules.order'
+ echo '[09-May-25_18:17:29] Executing command: touch /lib/modules/5.15.0-1087-azure/modules.order'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:29] Executing command: touch /lib/modules/5.15.0-1087-azure/modules.order
++ eval 'touch /lib/modules/5.15.0-1087-azure/modules.order'
+++ touch /lib/modules/5.15.0-1087-azure/modules.order
+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]
+ exec_cmd 'touch /lib/modules/5.15.0-1087-azure/modules.builtin'

+ debug_print 'Executing command: touch /lib/modules/5.15.0-1087-azure/modules.builtin'
+ true
+ timestamp_print Executing command: touch /lib/modules/5.15.0-1087-azure/modules.builtin
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:29
+ msg='[09-May-25_18:17:29] Executing command: touch /lib/modules/5.15.0-1087-azure/modules.builtin'
+ echo '[09-May-25_18:17:29] Executing command: touch /lib/modules/5.15.0-1087-azure/modules.builtin'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:29] Executing command: touch /lib/modules/5.15.0-1087-azure/modules.builtin
++ eval 'touch /lib/modules/5.15.0-1087-azure/modules.builtin'
+++ touch /lib/modules/5.15.0-1087-azure/modules.builtin
+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]

+ true
+ exec_cmd 'dpkg -i /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/*.deb'
+ debug_print 'Executing command: dpkg -i /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/*.deb'
+ true
+ timestamp_print Executing command: dpkg -i /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-tools_25.01-0.2501060_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:29
+ msg='[09-May-25_18:17:29] Executing command: dpkg -i /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-tools_25.01-0.2501060_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb'
+ echo '[09-May-25_18:17:29] Executing command: dpkg -i /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-tools_25.01-0.2501060_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:29] Executing command: dpkg -i /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-tools_25.01-0.2501060_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb
++ eval 'dpkg -i /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/*.deb'
+++ dpkg -i /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/mlnx-tools_25.01-0.2501060_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb /mnt/drivers-inventory/5.15.0-1087-azure/25.01-0.6.0.0/xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb
+ output='Selecting previously unselected package iser-modules.
(Reading database ... 70713 files and directories currently installed.)
Preparing to unpack .../iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking iser-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package iser-modules.
(Reading database ... 70713 files and directories currently installed.)
Preparing to unpack .../iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking iser-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package isert-modules.
Selecting previously unselected package isert-modules.
Preparing to unpack .../isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking isert-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Preparing to unpack .../isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Selecting previously unselected package kernel-mft-modules.
Preparing to unpack .../kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb ...
Unpacking kernel-mft-modules (4.31.0.149-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package knem-modules.
Preparing to unpack .../knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking knem-modules (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package knem.
Preparing to unpack .../knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking knem (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-nfsrdma-modules.
Preparing to unpack .../mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-nfsrdma-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-nvme-modules.
Unpacking isert-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Preparing to unpack .../mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-nvme-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package kernel-mft-modules.
Selecting previously unselected package mlnx-ofed-kernel-modules.
Preparing to unpack .../mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-ofed-kernel-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-ofed-kernel-utils.
Preparing to unpack .../mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-ofed-kernel-utils (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-tools.
Preparing to unpack .../mlnx-tools_25.01-0.2501060_amd64.deb ...
Unpacking mlnx-tools (25.01-0.2501060) ...
Preparing to unpack .../kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb ...
Unpacking kernel-mft-modules (4.31.0.149-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package srp-modules.
Preparing to unpack .../srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking srp-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package knem-modules.
Preparing to unpack .../knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking knem-modules (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package knem.
Preparing to unpack .../knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking knem (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-nfsrdma-modules.
Preparing to unpack .../mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-nfsrdma-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-nvme-modules.
Selecting previously unselected package xpmem-modules:amd64.
Preparing to unpack .../xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking xpmem-modules:amd64 (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Selecting previously unselected package xpmem.
Preparing to unpack .../xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb ...
Unpacking xpmem (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Setting up kernel-mft-modules (4.31.0.149-1.kver.5.15.0-1087-azure) ...
Setting up knem-modules (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Setting up knem (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Setting up mlnx-tools (25.01-0.2501060) ...
Setting up xpmem-modules:amd64 (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Setting up xpmem (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Setting up mlnx-ofed-kernel-utils (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Configured /etc/security/limits.conf
Setting up mlnx-ofed-kernel-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
update-alternatives: using /usr/src/ofa_kernel/x86_64/5.15.0-1087-azure to provide /usr/src/ofa_kernel/default (ofa_kernel_headers) in auto mode
Setting up srp-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up iser-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Preparing to unpack .../mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Setting up isert-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up mlnx-nfsrdma-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up mlnx-nvme-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Unpacking mlnx-nvme-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-ofed-kernel-modules.
Preparing to unpack .../mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-ofed-kernel-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-ofed-kernel-utils.
Preparing to unpack .../mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-ofed-kernel-utils (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-tools.
Preparing to unpack .../mlnx-tools_25.01-0.2501060_amd64.deb ...
Unpacking mlnx-tools (25.01-0.2501060) ...
Selecting previously unselected package srp-modules.
Preparing to unpack .../srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking srp-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package xpmem-modules:amd64.
Preparing to unpack .../xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking xpmem-modules:amd64 (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Selecting previously unselected package xpmem.
Preparing to unpack .../xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb ...
Unpacking xpmem (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Processing triggers for man-db (2.10.2-1) ...
Setting up kernel-mft-modules (4.31.0.149-1.kver.5.15.0-1087-azure) ...
Setting up knem-modules (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Setting up knem (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Setting up mlnx-tools (25.01-0.2501060) ...
Setting up xpmem-modules:amd64 (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Setting up xpmem (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Setting up mlnx-ofed-kernel-utils (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Configured /etc/security/limits.conf
Setting up mlnx-ofed-kernel-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
update-alternatives: using /usr/src/ofa_kernel/x86_64/5.15.0-1087-azure to provide /usr/src/ofa_kernel/default (ofa_kernel_headers) in auto mode
Setting up srp-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up iser-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up isert-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up mlnx-nfsrdma-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up mlnx-nvme-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Processing triggers for man-db (2.10.2-1) ...'
+ exit_code=0
+ echo 'Selecting previously unselected package iser-modules.
(Reading database ... 70713 files and directories currently installed.)
Preparing to unpack .../iser-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking iser-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package isert-modules.
Preparing to unpack .../isert-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking isert-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package kernel-mft-modules.
Preparing to unpack .../kernel-mft-modules_4.31.0.149-1.kver.5.15.0-1087-azure_all.deb ...
Unpacking kernel-mft-modules (4.31.0.149-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package knem-modules.
Preparing to unpack .../knem-modules_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking knem-modules (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package knem.
Preparing to unpack .../knem_1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking knem (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-nfsrdma-modules.
Preparing to unpack .../mlnx-nfsrdma-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-nfsrdma-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-nvme-modules.
Preparing to unpack .../mlnx-nvme-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-nvme-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-ofed-kernel-modules.
Preparing to unpack .../mlnx-ofed-kernel-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-ofed-kernel-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-ofed-kernel-utils.
Preparing to unpack .../mlnx-ofed-kernel-utils_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking mlnx-ofed-kernel-utils (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package mlnx-tools.
Preparing to unpack .../mlnx-tools_25.01-0.2501060_amd64.deb ...
Unpacking mlnx-tools (25.01-0.2501060) ...
Selecting previously unselected package srp-modules.
Preparing to unpack .../srp-modules_25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking srp-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Selecting previously unselected package xpmem-modules:amd64.
Preparing to unpack .../xpmem-modules_2.7.4-1.2501060.kver.5.15.0-1087-azure_amd64.deb ...
Unpacking xpmem-modules:amd64 (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Selecting previously unselected package xpmem.
Preparing to unpack .../xpmem_2.7.4-1.2501060.kver.5.15.0-1087-azure_all.deb ...
Unpacking xpmem (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Setting up kernel-mft-modules (4.31.0.149-1.kver.5.15.0-1087-azure) ...
Setting up knem-modules (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Setting up knem (1.1.4.90mlnx3-OFED.23.10.0.2.1.1.kver.5.15.0-1087-azure) ...
Setting up mlnx-tools (25.01-0.2501060) ...
Setting up xpmem-modules:amd64 (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Setting up xpmem (2.7.4-1.2501060.kver.5.15.0-1087-azure) ...
Setting up mlnx-ofed-kernel-utils (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Configured /etc/security/limits.conf
Setting up mlnx-ofed-kernel-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
update-alternatives: using /usr/src/ofa_kernel/x86_64/5.15.0-1087-azure to provide /usr/src/ofa_kernel/default (ofa_kernel_headers) in auto mode
Setting up srp-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up iser-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up isert-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up mlnx-nfsrdma-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Setting up mlnx-nvme-modules (25.01.OFED.25.01.0.6.0.1-1.kver.5.15.0-1087-azure) ...
Processing triggers for man-db (2.10.2-1) ...'
+ [[ 0 -ne 0 ]]
+ exec_cmd 'depmod 5.15.0-1087-azure'
+ debug_print 'Executing command: depmod 5.15.0-1087-azure'
+ true
+ timestamp_print Executing command: depmod 5.15.0-1087-azure
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Executing command: depmod 5.15.0-1087-azure'
+ echo '[09-May-25_18:17:31] Executing command: depmod 5.15.0-1087-azure'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Executing command: depmod 5.15.0-1087-azure
++ eval 'depmod 5.15.0-1087-azure'
+++ depmod 5.15.0-1087-azure
+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]

+ true
+ ubuntu_sync_network_configuration_tools
+ debug_print 'Function: ubuntu_sync_network_configuration_tools'
+ true
+ timestamp_print Function: ubuntu_sync_network_configuration_tools
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Function: ubuntu_sync_network_configuration_tools'
+ echo '[09-May-25_18:17:31] Function: ubuntu_sync_network_configuration_tools'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Function: ubuntu_sync_network_configuration_tools
+ [[ -e /etc/network/interfaces ]]
+ load_driver
+ debug_print 'Function: load_driver'
+ true
+ timestamp_print Function: load_driver
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Function: load_driver'
+ echo '[09-May-25_18:17:31] Function: load_driver'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Function: load_driver
+ modules_to_check=('mlx5_core' 'mlx5_ib' 'ib_core')
+ local modules_to_check
+ [[ false = true ]]
+ check_loaded_kmod_srcver_vs_modinfo mlx5_core mlx5_ib ib_core
+ debug_print 'Function: check_loaded_kmod_srcver_vs_modinfo'
+ true
+ timestamp_print Function: check_loaded_kmod_srcver_vs_modinfo
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Function: check_loaded_kmod_srcver_vs_modinfo'
+ echo '[09-May-25_18:17:31] Function: check_loaded_kmod_srcver_vs_modinfo'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Function: check_loaded_kmod_srcver_vs_modinfo
+ for module in "$@"
+ debug_print 'checking module mlx5_core'
+ true
+ timestamp_print checking module mlx5_core
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] checking module mlx5_core'
+ echo '[09-May-25_18:17:31] checking module mlx5_core'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] checking module mlx5_core
++ /sbin/modinfo mlx5_core
++ grep srcversion
++ awk '{print $NF}'
+ local srcver_from_modinfo=232FDEDD901B4D732FAB0E5
++ /bin/cat /sys/module/mlx5_core/srcversion
+ local srcver_from_sysfs=5C665939D32BB564858EA35
+ debug_print 'module: mlx5_core, srcver_from_modinfo: 232FDEDD901B4D732FAB0E5, srcver_from_sysfs: 5C665939D32BB564858EA35'
+ true
+ timestamp_print module: mlx5_core, srcver_from_modinfo: 232FDEDD901B4D732FAB0E5, srcver_from_sysfs: 5C665939D32BB564858EA35
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] module: mlx5_core, srcver_from_modinfo: 232FDEDD901B4D732FAB0E5, srcver_from_sysfs: 5C665939D32BB564858EA35'
+ echo '[09-May-25_18:17:31] module: mlx5_core, srcver_from_modinfo: 232FDEDD901B4D732FAB0E5, srcver_from_sysfs: 5C665939D32BB564858EA35'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] module: mlx5_core, srcver_from_modinfo: 232FDEDD901B4D732FAB0E5, srcver_from_sysfs: 5C665939D32BB564858EA35
+ [[ 232FDEDD901B4D732FAB0E5 != \5\C\6\6\5\9\3\9\D\3\2\B\B\5\6\4\8\5\8\E\A\3\5 ]]
+ debug_print 'module: mlx5_core, srcver differs'
+ true
+ timestamp_print module: mlx5_core, srcver differs
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] module: mlx5_core, srcver differs'
+ echo '[09-May-25_18:17:31] module: mlx5_core, srcver differs'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] module: mlx5_core, srcver differs
+ return 1
+ restart_driver
+ debug_print 'Function: restart_driver'
+ true
+ timestamp_print Function: restart_driver
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Function: restart_driver'
+ echo '[09-May-25_18:17:31] Function: restart_driver'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Function: restart_driver
+ exec_cmd 'modprobe -d /host tls'
+ debug_print 'Executing command: modprobe -d /host tls'
+ true
+ timestamp_print Executing command: modprobe -d /host tls
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Executing command: modprobe -d /host tls'
+ echo '[09-May-25_18:17:31] Executing command: modprobe -d /host tls'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Executing command: modprobe -d /host tls
++ eval 'modprobe -d /host tls'
+++ modprobe -d /host tls
+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]
+ exec_cmd 'modprobe -d /host psample'
+ debug_print 'Executing command: modprobe -d /host psample'

+ true
+ timestamp_print Executing command: modprobe -d /host psample
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Executing command: modprobe -d /host psample'
+ echo '[09-May-25_18:17:31] Executing command: modprobe -d /host psample'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Executing command: modprobe -d /host psample
++ eval 'modprobe -d /host psample'
+++ modprobe -d /host psample
+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]

+ modinfo -Fdepends mlx5_ib
+ grep -qw macsec
+ load_pci_hyperv_intf=false
+ '[' x86_64 '!=' aarch64 ']'
+ true
+ load_pci_hyperv_intf=true
+ true
+ exec_cmd 'modprobe -d /host pci-hyperv-intf'
+ debug_print 'Executing command: modprobe -d /host pci-hyperv-intf'
+ true
+ timestamp_print Executing command: modprobe -d /host pci-hyperv-intf
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Executing command: modprobe -d /host pci-hyperv-intf'
+ echo '[09-May-25_18:17:31] Executing command: modprobe -d /host pci-hyperv-intf'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Executing command: modprobe -d /host pci-hyperv-intf
++ eval 'modprobe -d /host pci-hyperv-intf'
+++ modprobe -d /host pci-hyperv-intf
+ output=
+ exit_code=0
+ echo ''
+ [[ 0 -ne 0 ]]

+ timestamp_print 'Apply blacklisted mofed modules file to host (/etc/modprobe.d/blacklist-ofed-modules.conf)'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Apply blacklisted mofed modules file to host (/etc/modprobe.d/blacklist-ofed-modules.conf)'
+ echo '[09-May-25_18:17:31] Apply blacklisted mofed modules file to host (/etc/modprobe.d/blacklist-ofed-modules.conf)'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Apply blacklisted mofed modules file to host (/etc/modprobe.d/blacklist-ofed-modules.conf)
+ trap remove_ofed_modules_blacklist EXIT
+ generate_ofed_modules_blacklist
Function: generate_ofed_modules_blacklist
+ echo 'Function: generate_ofed_modules_blacklist'
+ IFS=:
+ read -ra components
+ echo -e '# blacklist ofed-related modules on host to prevent inbox or host OFED driver loading\n'
+ for component in "${components[@]}"
+ echo 'blacklist mlx5_core'
+ for component in "${components[@]}"
+ echo 'blacklist mlx5_ib'
+ for component in "${components[@]}"
+ echo 'blacklist ib_umad'
+ for component in "${components[@]}"
+ echo 'blacklist ib_uverbs'
+ for component in "${components[@]}"
+ echo 'blacklist ib_ipoib'
+ for component in "${components[@]}"
+ echo 'blacklist rdma_cm'
+ for component in "${components[@]}"
+ echo 'blacklist rdma_ucm'
+ for component in "${components[@]}"
+ echo 'blacklist ib_core'
+ for component in "${components[@]}"
+ echo 'blacklist ib_cm'
++ cat /etc/modprobe.d/blacklist-ofed-modules.conf
+ debug_print '# blacklist ofed-related modules on host to prevent inbox or host OFED driver loading

blacklist mlx5_core
blacklist mlx5_ib
blacklist ib_umad
blacklist ib_uverbs
blacklist ib_ipoib
blacklist rdma_cm
blacklist rdma_ucm
blacklist ib_core
blacklist ib_cm'
+ true
+ timestamp_print '#' blacklist ofed-related modules on host to prevent inbox or host OFED driver loading blacklist mlx5_core blacklist mlx5_ib blacklist ib_umad blacklist ib_uverbs blacklist ib_ipoib blacklist rdma_cm blacklist rdma_ucm blacklist ib_core blacklist ib_cm
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] # blacklist ofed-related modules on host to prevent inbox or host OFED driver loading blacklist mlx5_core blacklist mlx5_ib blacklist ib_umad blacklist ib_uverbs blacklist ib_ipoib blacklist rdma_cm blacklist rdma_ucm blacklist ib_core blacklist ib_cm'
+ echo '[09-May-25_18:17:31] # blacklist ofed-related modules on host to prevent inbox or host OFED driver loading blacklist mlx5_core blacklist mlx5_ib blacklist ib_umad blacklist ib_uverbs blacklist ib_ipoib blacklist rdma_cm blacklist rdma_ucm blacklist ib_core blacklist ib_cm'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] # blacklist ofed-related modules on host to prevent inbox or host OFED driver loading blacklist mlx5_core blacklist mlx5_ib blacklist ib_umad blacklist ib_uverbs blacklist ib_ipoib blacklist rdma_cm blacklist rdma_ucm blacklist ib_core blacklist ib_cm
+ false
+ exec_cmd '/etc/init.d/openibd restart'
+ debug_print 'Executing command: /etc/init.d/openibd restart'
+ true
+ timestamp_print Executing command: /etc/init.d/openibd restart
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:31
+ msg='[09-May-25_18:17:31] Executing command: /etc/init.d/openibd restart'
+ echo '[09-May-25_18:17:31] Executing command: /etc/init.d/openibd restart'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:31] Executing command: /etc/init.d/openibd restart
++ eval '/etc/init.d/openibd restart'
+++ /etc/init.d/openibd restart
+ output='Unloading HCA driver:[60G[  [1;32mOK[0;39m  ]
Failed loading kernel module mlx5_ib:[60G[[1;31mFAILED[0;39m]
Loading Mellanox MLX5_IB HCA driver:[60G[[1;31mFAILED[0;39m]
Loading HCA driver and Access Layer:[60G[[1;31mFAILED[0;39m]

Please open an issue in the http://support.mellanox.com/SupportWeb/service_center/SelfService and attach /tmp/ib_debug_info.log'
Unloading HCA driver:[60G[  [1;32mOK[0;39m  ]
Failed loading kernel module mlx5_ib:[60G[[1;31mFAILED[0;39m]
Loading Mellanox MLX5_IB HCA driver:[60G[[1;31mFAILED[0;39m]
Loading HCA driver and Access Layer:[60G[[1;31mFAILED[0;39m]

Please open an issue in the http://support.mellanox.com/SupportWeb/service_center/SelfService and attach /tmp/ib_debug_info.log
+ exit_code=1
+ echo 'Unloading HCA driver:[60G[  [1;32mOK[0;39m  ]
Failed loading kernel module mlx5_ib:[60G[[1;31mFAILED[0;39m]
Loading Mellanox MLX5_IB HCA driver:[60G[[1;31mFAILED[0;39m]
Loading HCA driver and Access Layer:[60G[[1;31mFAILED[0;39m]

Please open an issue in the http://support.mellanox.com/SupportWeb/service_center/SelfService and attach /tmp/ib_debug_info.log'
+ [[ 1 -ne 0 ]]
+ timestamp_print 'Command "/etc/init.d/openibd restart" failed with exit code: 1'
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:51
+ msg='[09-May-25_18:17:51] Command "/etc/init.d/openibd restart" failed with exit code: 1'
+ echo '[09-May-25_18:17:51] Command "/etc/init.d/openibd restart" failed with exit code: 1'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:51] Command "/etc/init.d/openibd restart" failed with exit code: 1
+ exit_entryp 1
+ debug_print 'Function: exit_entryp'
+ true
+ timestamp_print Function: exit_entryp
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:51
+ msg='[09-May-25_18:17:51] Function: exit_entryp'
+ echo '[09-May-25_18:17:51] Function: exit_entryp'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:51] Function: exit_entryp
+ true
+ debug_print 'Entrypoint exit request caught - exit code: 1, attempting to sleep 10000000 sec.'
+ true
+ timestamp_print Entrypoint exit request caught - exit code: 1, attempting to sleep 10000000 sec.
++ date +%d-%b-%y_%H:%M:%S
+ date_time_stamp=09-May-25_18:17:51
+ msg='[09-May-25_18:17:51] Entrypoint exit request caught - exit code: 1, attempting to sleep 10000000 sec.'
+ echo '[09-May-25_18:17:51] Entrypoint exit request caught - exit code: 1, attempting to sleep 10000000 sec.'
+ tee -a /tmp/entrypoint_debug_cmds.log
[09-May-25_18:17:51] Entrypoint exit request caught - exit code: 1, attempting to sleep 10000000 sec.
+ sleep 10000000
