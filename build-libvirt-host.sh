#!/usr/bin/bash
hammer host create  \
		--hostgroup=RHEL7  \
		--location-id=2  \
		--organization-id=1  \
		--name="satellite-test-host" \
		--compute-resource=fedora_host  \
		--managed=true  \
		--provision-method=build  \
		--domain-id=2  \
		--kickstart-repository-id=28  \
		--content-view-id=2  \
		--lifecycle-environment-id=2  \
		--operatingsystem="RedHat 7.2"  \
		--compute-profile="Tower Small"   \
		--mac=""  \
		--interface ip=192.168.200.147,managed=true,provision=true,primary=true,subnet_id=2,domain_id=2,compute_type=network,compute_network=sat62,compute_model="e1000"   \
		--compute-attributes "start=1,cpus=1,memory=4096000000"  \
		--volume pool_name=bigdefault,capacity=10G,format_type=qcow2
