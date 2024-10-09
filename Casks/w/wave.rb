cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.9"
  sha256 arm:   "205941f9468904983c64e709718073cc11bf03e8778052cb70beda2fa7ae88e2",
         intel: "4343d53dffb5a0d349c52eec4396864f89fc1f1cb18d818c60af276013c95737"

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
