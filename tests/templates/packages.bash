#!/usr/bin/env bats
# -*- shell-script -*-
load test_helpers

@test "[$TEST_FILE] Check depman version" {
    run launch depman version
    [[ ${lines[0]} =~ "depman {{packages.depman.version.stable}}" ]]
}

@test "[$TEST_FILE] Check yatr version" {
    run launch yatr --version
    [[ ${lines[0]} =~ "yatr {{packages.yatr.version.stable}}" ]]
}

@test "[$TEST_FILE] Check system Python version" {
    run launch python --version
    [[ ${lines[0]} =~ "Python 2.7" ]]
}

# TODO: check dockerman
# TODO: check docker-master
# TODO: check docker-compose
# TODO: check bats

