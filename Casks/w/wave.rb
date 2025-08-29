cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.11.5"
  sha256 arm:   "4ab515f0a10a207be275cc93c1f9ebdbd5549149033b58426238a7deb806f882",
         intel: "5140ae11c693e9a7761e0dc8343d70ae981d692441447a7c2ef98dbdf46fc996"

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
