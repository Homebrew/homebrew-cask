cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "08d8fc7ca605e58179788b859a5a62eca719e7deb5f0ff65281857408f102787",
         intel: "14eb730db14605a51f423d96a96fb38d28ec2a1fdc1990ee5eeb7e1dc6a0ba2a"

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
