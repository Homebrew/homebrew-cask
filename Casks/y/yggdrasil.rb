cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.5"
  sha256 arm:   "a4698f69386dfd2d7a0372512d7a72fa5bb13bdf16912cd4eefbcf3b13c4c34b",
         intel: "d0c1a966c5098cf3e740a5bd1c3b4e017ebdc55efcf6a7ca87a754dceb3d2146"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
