cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.5"
  sha256 arm:   "9ecfb0f5bfd823f30171250d46d6971fd0240bc3f2baf4e4ca5a4e75ced5ec3f",
         intel: "9bccda3bc38f22d7d070bfd9c6c45491b34451f683942bafebc6d678ddc65e0e"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
