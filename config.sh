# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    source ./build_dependencies.sh
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    :
}
