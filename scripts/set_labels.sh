#!/usr/bin/env bash
echo "Set the current GUID "
GUID=`hostname|awk -F. '{print $2}'`
oc label node node1.$GUID.internal alpha=true
oc label node node2.$GUID.internal beta=true
oc label node node3.$GUID.internal common=true

