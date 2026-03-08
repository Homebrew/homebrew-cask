cask "yggdrasil" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.13"
  sha256 arm:   "4ae09792a898a757aeda0bae4e898e129eff3b0ee880097d7276f5f34b79ab40",
         intel: "c607e01f1e8752248c127da17e41f9c2957c0846b308d3aef38a639b45be79f3"

  url "https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v#{version}/yggdrasil-#{version}-macos-#{arch}.pkg"
  name "Yggdrasil"
  desc "End-to-end encrypted IPv6 networking to connect worlds"
  homepage "https://github.com/yggdrasil-network/yggdrasil-go"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  pkg "yggdrasil-#{version}-macos-#{arch}.pkg"

  uninstall launchctl: "yggdrasil",
            pkgutil:   "io.github.yggdrasil-network.pkg"

  zap delete: [
    "/etc/yggdrasil.conf",
    "/Library/Preferences/Yggdrasil",
  ]
end
