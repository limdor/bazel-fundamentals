# Stop bazel server that might be running for each workspace
for dir in ./*/; do (cd "$dir" && bazelisk shutdown); done
