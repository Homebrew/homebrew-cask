cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "51b4fb639ab5e3781d85d271333593149eb9b71461d6f7e2dad38c856ead7f76",
         intel: "c37eea2b55794300aef0c3d7aae23144fe4e111266e86bdc226e5a055ca20979"

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
