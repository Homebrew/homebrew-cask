cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.14.4"
  sha256 arm:   "2ffe22e7ba6930ddd229c84eec606bb76693a34c4b10905fab6139f38f7fc419",
         intel: "0cb3ebf4a072981a4918f33890744cc25f5a03c8b0f9c4c9d2d1335b18bf2e49"

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
