#!/bin/bash

source env.sh
	
docker run \
	--name=$CON_SPARK_DRIVER_NAME \
	-p $CON_SPARK_DRIVER_PORT_SV_WEB \
	-v $CON_SPARK_DRIVER_VOL_TMP \
	-v $CON_SPARK_DRIVER_VOL_SV_LOGS \
	-e DNSDOCK_ALIAS=$CON_SPARK_DRIVER_DNS_NAME \
	-h $CON_SPARK_DRIVER_DNS_NAME \
	--dns $HOST_IP \
	-d $IMG_SPARK_DRIVER
