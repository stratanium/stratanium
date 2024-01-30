#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.strataniumcore/strataniumd.pid file instead
stratanium_pid=$(<~/.strataniumcore/testnet3/strataniumd.pid)
sudo gdb -batch -ex "source debug.gdb" strataniumd ${stratanium_pid}
