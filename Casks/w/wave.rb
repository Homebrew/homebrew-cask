cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "36f85d6a8c86c49c0b755255a1729cd52597c7a8bdcc982e189e6dee25dfa02c",
         intel: "a55e10764949d2e0e0468e4a7595a5f1c0cbad64398ca10232a50f49d317ccf6"

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
