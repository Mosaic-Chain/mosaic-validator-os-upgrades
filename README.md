# Mosaic Validator OS Upgrades

This repository contains all updates and configurations that the Mosaic Team rolls out to Mosaic Chain validator nodes. It is used with [Ansible Pull](https://docs.ansible.com/ansible/latest/cli/ansible-pull.html) to ensure validators stay up-to-date with the latest improvements, security patches, and system optimizations.

## What’s Inside?

- Ansible Playbooks (`playbooks`)
  - `playbooks/upgrade-mosaic.yml` -> the main playbook that groups together each iteration the Mosaic Team rolls out.
- Tasks (`tasks`) – contains all iteration one by one, using the following pattern: `upgrade_SEMVER_VERSION.yml`

## How It Works

Each validator node periodically runs Ansible Pull, fetching and applying the latest changes from this repository. Updates happen automatically without manual intervention.
