# ssato.generate_kickstart

This is an example ansible role to backup configuration files on network nodes.

<!--
How to get the role ID:
ansible-galaxy info ssato.generate_kickstart | sed -nr "s/[[:blank:]]+id: ([[:digit:]]+)/\1/p"
-->
[![Build Status](https://img.shields.io/travis/ssato/ansible-role-nw-backup-config.png)](https://travis-ci.org/ssato/ansible-role-nw-backup-config) <!-- [![Ansible Galaxy](https://img.shields.io/ansible/role/43954.svg)](https://galaxy.ansible.com/ssato/nw_backup_config) -->

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
