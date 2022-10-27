cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.6"
  sha256 arm:   "7504f9f76bbfbd0cd66d218b965a0e1a5a4c48152fdf5dbb69d1928cb85a76cf",
         intel: "657ccda1671b106ed03e501906f91bf232d33d18abf335c2429946ddba8f296f"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
