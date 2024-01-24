cask "wave" do
  version "0.6.0"
  sha256 "d976574ec528feef63ae17819dca02ccaa2c3064e89efa593a5e52a37ba8a54c"

  url "https://dl.waveterm.dev/builds/waveterm-macos-universal-v#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://www.waveterm.dev/download"
    regex(/href=.*?waveterm.+?[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
