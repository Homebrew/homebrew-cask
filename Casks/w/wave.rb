cask "wave" do
  version "0.7.1"
  sha256 "3be4759292d636e9e472f7f23dca5a401e4241a4c146a918323b50908c6d0e07"

  url "https://dl.waveterm.dev/releases/Wave-darwin-universal-#{version}.dmg"
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
