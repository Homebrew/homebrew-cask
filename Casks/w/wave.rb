cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.13"
  sha256 arm:   "14bc6498cc81394795fbc6d840ba5b2fe5b3e74889da54cbe4d09c9d75fcbf3c",
         intel: "e74f5cf1c05fc497fb4f57bffa44498f99cdba637cc4c9f38831224b51921f48"

  url "https://dl.waveterm.dev/releases-w2/Wave-darwin-#{arch}-#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://www.waveterm.dev/download"
    regex(/href=.*?Wave.+?[._-]?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
