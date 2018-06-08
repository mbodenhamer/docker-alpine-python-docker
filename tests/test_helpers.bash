# -*- shell-script -*-
TEST_FILE=$(basename $BATS_TEST_FILENAME .bats)
TEST_DIR=$(dirname $BATS_TEST_FILENAME)

function launch {
    docker run --rm -it -v `pwd`:/app -v /var/run/docker.sock:/var/run/docker.sock -v /tmp:/tmp mbodenhamer/alpine-python-docker:latest "$@"
}