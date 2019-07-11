#!/usr/bin/env bash

# Source this file when starting the container to set it up

echo "#"
echo "# Loading LSST Stack"
source /opt/lsst/software/stack/loadLSST.bash
setup lsst_distrib
echo "#"
echo "# Loading sal environment"
source repos/ts_sal/setup.env
echo "#"
echo "# Setting up sal, salobj and scriptqueue"
 
setup ts_xml -t current
setup ts_sal -t current
setup ts_salobj -t current
setup ts_scriptqueue -t current

#~/repos/ts_sal/test/DIMM/cpp/src/sacpp_DIMM_command_efdwriter &> /dev/null &
#~/repos/ts_sal/test/DIMM/cpp/src/sacpp_DIMM_event_efdwriter &> /dev/null &
#~/repos/ts_sal/test/DIMM/cpp/src/sacpp_DIMM_telemetry_efdwriter &> /dev/null &

/bin/bash --rcfile /home/saluser/.bash_rc
