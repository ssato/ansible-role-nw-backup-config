# ssato.nw_backup_config

This is an example ansible role to backup configuration files on network nodes.

<!--
How to get the role ID:
ansible-galaxy info ssato.generate_kickstart | sed -nr "s/[[:blank:]]+id: ([[:digit:]]+)/\1/p"
-->
[![Build Status](https://img.shields.io/travis/ssato/ansible-role-nw-backup-config.png)](https://travis-ci.org/ssato/ansible-role-nw-backup-config) [![Ansible Galaxy](https://img.shields.io/ansible/role/43970.svg)](https://galaxy.ansible.com/ssato/nw_backup_config)

## Notes

I don't have enough network nodes and tests are very limited.

- Tested and confirmed it works: Cisco (ios), Arista (eos), Juniper (junos)
- Tested but don't confirm it works yet: F5 Big-IP (bigip)
- Not tested: FortiOS (fortios), Cisco (iosxr)

## Requirements

- Network nodes supported
- python libraries required:

  - F5 Big-IP:

    - f5-sdk
    - bigsuds

  - FortiOS:

    - pyfg
    - fortiosapi

  - Juniper:

    - ncclient

## Role Variables

see defaults/main.yml for default definitions of each variables and some examples.

## Example

see tests/main.yml for a playbook example.

## License

MIT

## Author

Satoru SATOH (<https://github.com/ssato>)

<!-- vim:sw=2:ts=2:et:
-->
