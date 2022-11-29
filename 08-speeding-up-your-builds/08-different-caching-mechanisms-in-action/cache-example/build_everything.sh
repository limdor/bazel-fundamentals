# Build everything on all workspaces
for dir in ./*/; do (cd "$dir" && time bazelisk build //...); done
