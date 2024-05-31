cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.6"
  sha256 arm:   "ce8f1e5257e174ffce76608ea89db6f084df0b9dc672884f0d312e8c498e69dd",
         intel: "ef78acd833d52cbac75b8d179b224cc70b2d116e0d7c4b73f354886c78f71064"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
