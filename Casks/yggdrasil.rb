cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.7"
  sha256 arm:   "81f97a18908c43e706384ed747ab685efdb0f1df2bb820e588946260f22b5bf4",
         intel: "73b9e60bfd720057b3dee386db67a0d23038b3623f84f0d77ad81bbc79c74610"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
