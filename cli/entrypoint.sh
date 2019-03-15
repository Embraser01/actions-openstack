#!/bin/sh

set -e

# Assign the default cloud config to be 'base'
${OS_CLOUD:=base}

sh -c "openstack $*"
