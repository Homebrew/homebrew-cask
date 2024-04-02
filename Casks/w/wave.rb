cask "wave" do
  version "0.7.2"
  sha256 "2c3fc8351eda5b7be287cef2d738e6fdedc7f559470cf0fbbe7def68a63342af"

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
