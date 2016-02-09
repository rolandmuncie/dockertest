#!/bin/sh
#
#  Copyright 2005-2014 Red Hat, Inc.
#
#  Red Hat licenses this file to you under the Apache License, version
#  2.0 (the "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#  implied.  See the License for the specific language governing
#  permissions and limitations under the License.
#

## defines the default environment settings


export SERVICE="dockertest"
export SERVICE_NAME="Karaf Quickstart : Beginner :: Camel Log"

export KARAF_OPTS="-Dkaraf.shutdown.pid.file=process.pid"
export KARAF_OPTS="$KARAF_OPTS -javaagent:jolokia-agent.jar=host=0.0.0.0,port=${JOLOKIA_PORT:-8778},authMode=jaas,realm=karaf,user=${KARAF_USERNAME:-admin},password=${KARAF_PASSWORD:-admin}"

# export the ports as system properties
export KARAF_OPTS="$KARAF_OPTS -Dhttp.port=$HTTP_PORT -Drmi.registry.port=$RMI_REGISTRY_PORT -Drmi.server.port=$RMI_SERVER_PORT -Dssh.port=$SSH_PORT"

