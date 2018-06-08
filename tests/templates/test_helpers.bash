# -*- shell-script -*-
TEST_FILE=$(basename $BATS_TEST_FILENAME .bats)
TEST_DIR=$(dirname $BATS_TEST_FILENAME)

function launch {
    {{launch_prefix}} {{image}}:latest "$@"
}
