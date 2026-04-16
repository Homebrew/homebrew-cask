cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.14.5"
  sha256 arm:   "8d72ae31bd2c3a81356d55ec86e70ea284a65bde117b52834529da3e2e40ff39",
         intel: "a26413d291b678d38ab3349f6f95501c26242c2c2f3225635970ec6efa1a9f42"

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
