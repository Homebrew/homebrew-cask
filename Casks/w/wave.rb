cask "wave" do
  version "0.6.1"
  sha256 "4bf43780d04f8edbc651ce7c7ba75b5c63db15a36eb45bdae9510ef698dc5bc0"

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
