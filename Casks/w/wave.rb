cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "37d9e0472c2354c4d9f80eecb3f80d905fa5b58637cb3f375507f577aa8b2b85",
         intel: "57a6b443899c4adfa20fb76356ac689547942de9aabf80b6324ca369f3b75426"

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
