cask "yggdrasil" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.4.4"

  if Hardware::CPU.intel?
    sha256 "bbeb5ce175dfa009e3f54f08261a7554c6caf4a6143eb9993ff94bbf9d9f7cff"
  else
    sha256 "72c2cb3b1b4f3db27a60c948c930c56ebc25eb382fb6350bc137572b49617aaf"
  end

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
