cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "f8e2753f735fe735c75bdf162ceb1e16d6969a2b2ad4ce4e171f4ca92768a507",
         intel: "ace1f736a00244211d5b1d6fbe8e4a8fa375a72e3dd1116d40c51c9e5d23979d"

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
