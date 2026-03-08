cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "052e4d57b5155bf24c035ba2b49b153189d177512d93119f415752a91e38f005",
         intel: "00de9e641e00b1828b2dfcf9c1f801bcac7261785a47ded784ad0de796e4c673"

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
  depends_on macos: ">= :monterey"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
