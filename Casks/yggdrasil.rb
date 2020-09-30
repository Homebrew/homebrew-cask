cask "yggdrasil" do
  version "0.3.15"
  sha256 "66c0fb9ecff048ae50816f5920e02a4a2240e9e9cf27c1c8acc9a420f59a3a6f"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-amd64.pkg"
  appcast "https://github.com/yggdrasil-network/yggdrasil-go/releases.atom"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-amd64.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
