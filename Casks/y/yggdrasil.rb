cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.10"
  sha256 arm:   "088b9b4c4f6b4fd2c8ba9f8d24aac820aef22c0568f6f00bb02578990dfd97e1",
         intel: "cc6d2fdbdbea284a7d49a92662c28b3390a146461076ad1998558a77a275f155"

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
