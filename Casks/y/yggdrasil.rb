cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.7"
  sha256 arm:   "45862b9e930db03efb6d51740478a4d8f4c9917f98692fdc60cc627a9abb6bf4",
         intel: "9070ac9fb7bbee3431532d2ce7fa78239eeb7affb1034236296640e3b65cace4"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"

  zap delete: [
    "/etc/yggdrasil.conf",
    "/Library/Preferences/Yggdrasil",
  ]
end
