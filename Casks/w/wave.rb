cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "ad6d4394246876f51513891bd616507d1ed9f91c04139831d4ab2d47a01a6348",
         intel: "dd9ca416eec385fa83385c419c12c07ae41d4e2b905051b1e867d3962e458d86"

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
