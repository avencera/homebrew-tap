#! /bin/bash

version=$(gh api /repos/avencera/yamine/releases/latest | jq .name -r)

osx_intel="https://github.com/avencera/yamine/releases/download/${version}/yamine-${version}-x86_64-apple-darwin.tar.gz"
osx_arm="https://github.com/avencera/yamine/releases/download/${version}/yamine-${version}-aarch64-apple-darwin.tar.gz"

linux_intel="https://github.com/avencera/yamine/releases/download/${version}/yamine-${version}-x86_64-unknown-linux-musl.tar.gz"
linux_arm="https://github.com/avencera/yamine/releases/download/${version}/yamine-${version}-aarch64-unknown-linux-musl.tar.gz"

function get_sha() {
    curl -L $1 --output yamine 
    local sha=$(shasum -a 256 yamine | awk '{print $1}')
    rm yamine
    echo $sha
}

osx_intel_sha=$(get_sha $osx_intel)
osx_arm_sha=$(get_sha $osx_arm)
linux_intel_sha=$(get_sha $linux_intel)
linux_arm_sha=$(get_sha $linux_arm)

cat pkg/brew/yamine.rb \
    | sed "s/version .*/version '${version}'/g" \
    | sed '18s/sha256 .*/sha256 "'"$osx_intel_sha"'"/g' \
    | sed '23s/sha256 .*/sha256 "'"$osx_arm_sha"'"/g' \
    | sed '28s/sha256 .*/sha256 "'"$linux_intel_sha"'"/g' \
    | sed '33s/sha256 .*/sha256 "'"$linux_arm_sha"'"/g' \
    > pkg/brew/yamine_new.rb

rm pkg/brew/yamine.rb
mv pkg/brew/yamine_new.rb pkg/brew/yamine.rb

git cms "Update yamine to ${version}"
git push
