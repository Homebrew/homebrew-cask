cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "49a9456ba11445f4eee21991e92e210448796b356a7050b2e4bf7ee125e727d0",
         intel: "fd8f3eadc881858705d73288902fda1d3934d845a9b79a38e31aa45924510605"

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
