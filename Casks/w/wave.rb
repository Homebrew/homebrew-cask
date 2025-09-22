cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.11.6"
  sha256 arm:   "eb933eace464c34655a4de7faef62a98f457a64f9bbe8db68160dde8e08559f5",
         intel: "9ef43a5345c33a4aae4605550b03663b01fd30239972a03a1c3ff218bb81af56"

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

  app "Wave.app"

  zap trash: "~/.waveterm"
end
