cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.4"
  sha256 arm:   "eb9951b8af67a4c2797d6e671641362def0cc52a54bd71b8d1109b277bbda93e",
         intel: "72d7b171fdb88ec75ac0602cf34f847f189a914aea87a34525d1b0ddf17fb87c"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
