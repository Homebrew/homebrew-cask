cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.9"
  sha256 arm:   "acb022b0de6ce68a3dc2ed4d6bc3aa1b96b67b2fe30f4065067b59bc2a00ff62",
         intel: "cea33c2261a3b33d8b96f6e4cbc4a06b69d93c84ce6c7fa8f8f50aed4a465fdf"

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
