cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.11.2"
  sha256 arm:   "3a927f8de1a1000feeedd9febcda2db24facdfb79e5743e82bca5a86300cb8d6",
         intel: "6c55fde92c9eac8d32caa06e80ba540a76bbf00f623178c1c8774f621dc1c6d5"

  url "https://dl.waveterm.dev/releases-w2/Wave-darwin-#{arch}-#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://dl.waveterm.dev/releases-w2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
