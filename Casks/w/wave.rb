cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.8"
  sha256 arm:   "a931add46a10cabf67ce77845f31ae27c5462a1eb36853307ef5b11b41a40787",
         intel: "9951d09fdbe00d31b1a403ca3f1f093218bfe244726b7d17d37788fbc65db16a"

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
