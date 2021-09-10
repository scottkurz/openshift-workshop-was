FROM ibmcom/db2:11.5.5.0
RUN mkdir /var/custom
COPY InventoryCreate.sql /var/custom
COPY InventoryData.sql /var/custom
COPY populateDB.sh /var/custom
RUN chmod a+x /var/custom/populateDB.sh
