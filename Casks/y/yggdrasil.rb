cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.1"
  sha256 arm:   "e3efeeb543da9f9d000a3f6a4c032250eb63f54d6a828f4db9f38ecbe12da2f1",
         intel: "2d12007208b3b3295655ce60a3e967b8bd84846226670cce1b04ce78a08cf5b2"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
