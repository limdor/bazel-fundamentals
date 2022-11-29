# Clean the symbolic links of each workspace as well as the output directory
for dir in ./*/; do (cd "$dir" && bazelisk clean --expunge); done

# Clean all Bazel outputs including default repository cache
rm -rf ~/.cache/bazel/_bazel_*/

# Clean custom disk cache
rm -rf ~/bazel-disk-cache/

# Clean custom repository cache
rm -rf ~/bazel-repository-cache/

# Because bazel itself is also cached, we trigger the download of it running
# any command because we are not interested on the time to download Bazel
for dir in ./*/; do (cd "$dir" && bazelisk help > /dev/null); done
