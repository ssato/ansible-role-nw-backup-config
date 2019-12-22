#! /usr/bin/bats
#
# Requirements:
#   - bats: https://github.com/sstephenson/bats
#
export INVENTORY=${1:-inventory/juniper_vlabs/hosts}

function setup () {
    cd $BATS_TEST_DIRNAME
}

function check_results () {
    [[ ${status} -eq 0 ]] || {
        cat << EOM
output:
${output}
EOM
        exit ${status}
    }
}

@test "Lint all yaml files" {
    run yamllint --strict .
    check_results
}

@test "Check styles of all playbook files" {
    run ansible-lint playbook.yml
    check_results
}

@test "Test applying the role" {
    run ansible-playbook -v -i ${INVENTORY} create.yml
    check_results

    run ansible-playbook -v -i ${INVENTORY} playbook.yml
    check_results
}

# vim:sw=4:ts=4:et:filetype=sh:
