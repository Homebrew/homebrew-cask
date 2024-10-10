cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.10"
  sha256 arm:   "03825db4ebfa9904de75bf952722d4d6b38bed9c93bc829b3a91403385c38082",
         intel: "75c77ddac97d2e1adc18e7f87ca80e4bcbbf5bf0380ad3ce539b3a99eed596da"

  url "https://dl.waveterm.dev/releases-w2/Wave-darwin-#{arch}-#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://www.waveterm.dev/download"
    regex(/href=.*?Wave.+?[._-]?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
