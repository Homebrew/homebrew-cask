cask "yggdrasil" do
  version "0.3.16"
  sha256 "4d1bc756db8fb237671f5ba3f121133a597d3e7057fafbffabf5fdfd93e2b669"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-amd64.pkg"
  appcast "https://github.com/yggdrasil-network/yggdrasil-go/releases.atom"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-amd64.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
