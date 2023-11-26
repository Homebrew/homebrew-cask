cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.3"
  sha256 arm:   "fed16cc8f8e8b5746831fd3946453350ad900b2e460bb15ddb209d80c3e8794d",
         intel: "aea9a510cd73ed7fe0c743608a89e5f297eff4f2829244764022b18dd4abac34"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
