#!/bin/bash

set -e

ansible-pull --url "https://github.com/Mosaic-Chain/mosaic-validator-os-upgrades.git" --checkout "main" --directory "/opt/mosaic/mosaic-validator-os-upgrades" --only-if-changed --inventory localhost playbooks/upgrade-mosaic.yml
