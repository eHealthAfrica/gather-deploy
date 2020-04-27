#!/usr/bin/env bash
#
# Copyright (C) 2020 by eHealth Africa : http://www.eHealthAfrica.org
#
# See the NOTICE file distributed with this work for additional information
# regarding copyright ownership.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

set -Eeuo pipefail

echo "Initializing Gather environment."
./scripts/generate_env_vars.sh

source .env

docker-compose pull

docker-compose up -d database minio
sleep 2

services=( kernel odk ui gather )
for service in "${services[@]}"; do
  docker-compose run --rm $service setup

  docker-compose run --rm $service manage create_user \
      -u=$GATHER_USERNAME \
      -p=$GATHER_PASSWORD
done

docker-compose kill

echo "Finished"
