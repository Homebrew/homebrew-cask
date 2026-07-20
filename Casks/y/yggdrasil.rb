cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.14"
  sha256 arm:   "a0a9366d7471cde1b5668afdaa8b04bcafe8b1489375e548dd512fa9ac0359b2",
         intel: "d5e1351a0da12e3760d84cc597b8c36feb9ca17b84e234f37bc3f3fe115d2577"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"

  zap delete: [
    "/etc/yggdrasil.conf",
    "/Library/Preferences/Yggdrasil",
  ]
end
