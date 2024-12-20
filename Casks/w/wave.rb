cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.10.3"
  sha256 arm:   "1652c25c6a004d42e9dd46fd4446178c87a6fe453dbd66f5a40b08b7c61d9dae",
         intel: "6496c8857a2be34a1137f17e5f379e116e0dd44a643cb5eb91868b1a2f6bf3d0"

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
