cask "yggdrasil" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.4.3"

  if Hardware::CPU.intel?
    sha256 "5685029a2aede8250dc18886bcb2f905e2f78fcd528dce7140d78bc58ca78cd8"
  else
    sha256 "d91dbd7e5995ca075a8b40f7070aaf3bf197e51efb5cfab0242b893795feb7dc"
  end

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"
end
