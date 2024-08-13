cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.8"
  sha256 arm:   "fdaa32df8dc8b47ed348cc15838ddfdb4819c46027366135a6a7cc4309245bf4",
         intel: "1119b983bcf07c1125d6b2947ba36911d4b53944ef8724dfb79543524bafe8aa"

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
