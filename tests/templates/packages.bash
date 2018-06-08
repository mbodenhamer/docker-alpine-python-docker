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

@test "[$TEST_FILE] Check Docker client version" {
    run launch docker version
    [[ ${lines[0]} =~ "Client:" ]]
    [[ ${lines[1]} =~ "17" ]] # TODO: pull from docker/install.yml
}

@test "[$TEST_FILE] Check if Docker daemon is accessible" {
    run launch docker version
    [[ ${lines[8]} =~ "Server:" ]]
    [[ ${lines[9]} =~ "Version:" ]]
}

@test "[$TEST_FILE] Check if dockerman is installed" {
    run launch python -c "import dockerman"
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if docker-compose is installed" {
    run launch docker-compose version
    [[ ${lines[0]} =~ "docker-compose" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if git is installed" {
    run launch git --version
    [[ ${lines[0]} =~ "git version" ]]
    [[ $status = 0 ]]
}
