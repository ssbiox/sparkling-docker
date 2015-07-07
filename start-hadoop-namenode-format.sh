#!/bin/bash

source env.sh
	
docker run \
	--name=$CON_HADOOP_NAMENODE1_NAME \
	-p $CON_HADOOP_NAMENODE1_PORT_SV_WEB \
	-p $CON_HADOOP_NAMENODE1_PORT_HD_WEB \
	-v $CON_HADOOP_NAMENODE1_VOL_TMP \
	-v $CON_HADOOP_NAMENODE1_VOL_HD_TEMP \
	-v $CON_HADOOP_NAMENODE1_VOL_HD_LOGS \
	-v $CON_HADOOP_NAMENODE1_VOL_SV_LOGS \
	-e DNSDOCK_ALIAS=$CON_HADOOP_NAMENODE1_DNS_NAME \
	-h $CON_HADOOP_NAMENODE1_DNS_NAME \
	--dns $HOST_IP \
	-d $IMG_HADOOP --bootstrap namenode format
