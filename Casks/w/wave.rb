cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.14.3"
  sha256 arm:   "05ed402f0bcd9e57aeaeff3c33170c1a5c72f57f529a38728aa837d93992e1eb",
         intel: "ec1d02aeaf76cc6d461e70c5d42d378de93de60479c88a3583fe0f5a50267fcf"

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
