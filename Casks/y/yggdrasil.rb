cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.12"
  sha256 arm:   "631b1d841c7bcf2fdc870f0ef9294500ff04322498f0d9f1bef3354083d506ca",
         intel: "d574e03247be3b00633b1300c326b3d1e856c06dd82df52886965ee3cc166fce"

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
