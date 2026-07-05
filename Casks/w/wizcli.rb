cask "wizcli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.59.0"
  sha256 arm:          "8ca7b0f12e8714c8fcd93e88d4622ae021e45bd12f0a1efb52358df12c017314",
         x86_64:       "19e929d262960fef9076757100f2445b2c0b18c4c3d988f4006b09e7e0ba47cf",
         arm64_linux:  "784bea76fb5e71f93ecc3e0dc7d650204f9254ac87b9ce06504a84c839bb4ae2",
         x86_64_linux: "81ee38b09a11291dc4930dbc85ed7b3d6f20f52f9fe82aaf83f6d768f0c0eec2"

  url "https://downloads.wiz.io/v#{version.major}/wizcli/#{version}/wizcli-#{os}-#{arch}"
  name "Wiz CLI"
  desc "CLI for interacting with the Wiz platform"
  homepage "https://www.wiz.io/"

  livecheck do
    url "https://downloads.wiz.io/v#{version.major}/wizcli/latest/wizcli-version"
    regex(/cli:\s"(\d+(?:\.\d+)+)/i)
  end

  binary "wizcli-#{os}-#{arch}", target: "wizcli"

  zap trash: "~/.wiz"
end
