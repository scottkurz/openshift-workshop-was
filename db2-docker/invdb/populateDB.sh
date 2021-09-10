#!/bin/sh +

whoami
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 CONNECT TO invdb && /opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/InventoryCreate.sql -z create.log'
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 CONNECT TO invdb && /opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/InventoryData.sql -z populate.log'
#/opt/ibm/db2/V11.5/bin/db2 -stvf InventoryDdl.sql  -z create.log
#/opt/ibm/db2/V11.5/bin/db2 -svft InventoryData.sql -z populate.log

