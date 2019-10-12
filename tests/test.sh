#! /bin/bash
set -ex

# INVENTORIES:
# <host_group>:<inventory_file>
INVENTORIES="${@:-\
cisco:$HOME/Desktop/t/rhpds/nw/hosts
lb:$HOME/Desktop/t/rhpds/f5/hosts
}"

[[ x${INVENTORIES} != x ]] || {
    echo "Usage: $0 $INVENTORIES"
    exit 1
}

cd ${0%/*}/../  # cd to the topdir.
yamllint --strict .
ansible-lint-3 tests/test.yml

for ginv in ${INVENTORIES:?}; do
    grp=${ginv%:*}; inv=${ginv#*:}
    ansible-playbook -vvv tests/test.yml -i ${inv} -e _hosts=${grp} --syntax-check
    ansible-playbook -vvv tests/test.yml -i ${inv} -e _hosts=${grp}
done

# vim:sw=4:ts=4:et:
