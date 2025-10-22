cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.12.1"
  sha256 arm:   "fe60c68eeab75a46b6af13dea4b0c9df1ba9965600a9d8687ef81ce6ff236f30",
         intel: "f3fd134a5f89893e0ea52f7c7c29884499306534a2923a2be12811ed54d8668c"

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
