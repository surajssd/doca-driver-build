# These commands were run inside the mofed pod

# ll /lib/modules/5.15.0-1087-azure/updates/dkms/
total 7284
drwxr-xr-x 2 root root    4096 May  9 19:28 ./
drwxr-xr-x 7 root root    4096 May  9 19:28 ../
-rw-r--r-- 1 root root    4520 Dec 31  2012 9pnet_rdma.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 efa.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 hfi1.ko
-rw-r--r-- 1 root root  218480 Dec 31  2012 ib_cm.ko
-rw-r--r-- 1 root root  751776 Dec 31  2012 ib_core.ko
-rw-r--r-- 1 root root  261448 Dec 31  2012 ib_ipoib.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 ib_iser.ko
-rw-r--r-- 1 root root  100904 Dec 31  2012 ib_isert.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 ib_mthca.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 ib_qib.ko
-rw-r--r-- 1 root root  127984 Dec 31  2012 ib_srp.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 ib_ucm.ko
-rw-r--r-- 1 root root   60216 Dec 31  2012 ib_umad.ko
-rw-r--r-- 1 root root  271072 Dec 31  2012 ib_uverbs.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 irdma.ko
-rw-r--r-- 1 root root   83656 Dec 31  2012 iw_cm.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 mana_ib.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 mlx4_ib.ko
-rw-r--r-- 1 root root 3858816 Dec 31  2012 mlx5_core.ko
-rw-r--r-- 1 root root  760096 Dec 31  2012 mlx5_ib.ko
-rw-r--r-- 1 root root   22696 Dec 31  2012 mlx_compat.ko
-rw-r--r-- 1 root root  201176 Dec 31  2012 mlxdevm.ko
-rw-r--r-- 1 root root   45120 Dec 31  2012 mlxfw.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 mlxsw_spectrum.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 opa_vnic.ko
-rw-r--r-- 1 root root  214272 Dec 31  2012 rdma_cm.ko
-rw-r--r-- 1 root root   51184 Dec 31  2012 rdma_ucm.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 rdmavt.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 rds_rdma.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 rnbd-client.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 rnbd-server.ko
-rw-r--r-- 1 root root  152464 Dec 31  2012 rpcrdma.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 rtrs-client.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 rtrs-core.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 rtrs-server.ko
-rw-r--r-- 1 root root   37736 Dec 31  2012 scsi_transport_srp.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 siw.ko
-rw-r--r-- 1 root root    4512 Dec 31  2012 smc.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 smc_diag.ko
-rw-r--r-- 1 root root    4520 Dec 31  2012 usnic_verbs.ko


# modinfo /lib/modules/5.15.0-1087-azure/updates/dkms/mlx5_ib.ko
filename:       /lib/modules/5.15.0-1087-azure/updates/dkms/mlx5_ib.ko
alias:          auxiliary:mlx5_core.rdma-rep
alias:          auxiliary:mlx5_core.multiport
alias:          auxiliary:mlx5_core.rdma
license:        Dual BSD/GPL
description:    Mellanox 5th generation network adapters (ConnectX series) IB driver
author:         Eli Cohen <eli@mellanox.com>
srcversion:     6E90C0B245BE640AA375EC9
depends:        mlx5_core,ib_core,ib_uverbs,mlx_compat
retpoline:      Y
name:           mlx5_ib
vermagic:       5.15.0-1087-azure SMP mod_unload modversions
