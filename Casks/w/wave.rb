cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "ba8cb35b9fd2402dd4f7901ae5c05fb6d5af56abb10954a9ae0d188584f52663",
         intel: "77a182eb710dbf3d59e290e2ea95947913cd42879f3aaed0d9c2534f7ecd9b7f"

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
