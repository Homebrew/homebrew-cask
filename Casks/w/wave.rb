cask "wave" do
  version "0.5.3"
  sha256 "523248aa145e56f83fbe5c4f74de036b7d78c00573c878602d955d762d4af7ae"

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
