cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.4"
  sha256 arm:   "72c2cb3b1b4f3db27a60c948c930c56ebc25eb382fb6350bc137572b49617aaf",
         intel: "bbeb5ce175dfa009e3f54f08261a7554c6caf4a6143eb9993ff94bbf9d9f7cff"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
