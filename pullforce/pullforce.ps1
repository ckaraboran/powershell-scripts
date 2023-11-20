param (
    [string]$branchName = $(git rev-parse --abbrev-ref HEAD)
)
git fetch --all
git reset --hard "origin/$branchName"
git clean -fd
