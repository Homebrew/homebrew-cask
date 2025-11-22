cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.12.4"
  sha256 arm:   "34c74b9226d4cebbdcf32842e2cb5a4618a1bba53cfed8342f6e87864dac86f5",
         intel: "c10fac6980475354dfc1a9f91abb0db333bb938e523d0c1fa754482f8512eca4"

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
