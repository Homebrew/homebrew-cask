cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "80eeb764162a778b5200555189ae8e4d96a0787ede59e425646a6e1ed9a1cf2c",
         intel: "350d91267ec81c7aa568a064b551c43d665853066d35808a2004a5807fdb1dea"

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
