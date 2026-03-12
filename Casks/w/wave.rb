cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.14.2"
  sha256 arm:   "d7184dfd676478ec8ffd766d1a3cdbcf485446fb9c7d090d901a8c7d0e716f90",
         intel: "a43f4be554ff83d5fc4eeb8c20fb0641d95386ae32681829c34bf0a6d41cf5e9"

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
