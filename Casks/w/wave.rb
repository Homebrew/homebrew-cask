cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.12.2"
  sha256 arm:   "5767d07fce526514010bad24485dd508d3da1b6760f59dca5941f0b2f8ce6dd6",
         intel: "75a0252e2e7e5ef236e5de4544ea17eeb7e7f28175ac357485c54c4f112ae9fa"

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
