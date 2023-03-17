#!/bin/bash

#ddev-generated
# ddev manages this file and may delete or overwrite it unless the above line is removed.
# This file comes from "ddev get julienloizelet/ddev-tools"

# UPDATE PRODUCT PRICE REST API
TOKEN=
BASE_URL=$1
SKU=$2

echo $BASE_URL

TOKEN=$(curl -X POST "${BASE_URL}/rest/V1/integration/admin/token" \
 -H "Content-Type:application/json" \
 -d '{"username":"admin", "password":"admin123"}')
TOKEN=$(echo $TOKEN | sed "s/\"//g");
echo TOKEN: ${TOKEN}

echo ${BASE_URL}/rest/V1/products/${SKU}

curl -X PUT "${BASE_URL}/rest/V1/products/${SKU}" \
  -H "authorization: Bearer ${TOKEN}" \
  -H 'content-type: application/json' \
  -d '{"product":{"price":"666.99"}}'
