cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.2"
  sha256 arm:   "25d80711ebf15a94b49e6bfe2b096fba3205c00a821d5c9171394239533230b5",
         intel: "6ad767f34533b6ba5610d68e64d1afce584c9659497fdaa92813700c9762c89d"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
