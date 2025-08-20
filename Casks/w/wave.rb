cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.11.4"
  sha256 arm:   "7727a4489fa32d4b14c1ebf8fe42f3793808dcac9eb5337558044ddd010dcf4a",
         intel: "234f5806e7824c1ca0accd08d5f0db9f4f29f9e239e1460c5d5c6e090588f6eb"

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
