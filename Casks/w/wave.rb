cask "wave" do
  version "0.5.1"
  sha256 "fe965fe581a66bbd7c394dbfd7ebb1635cd0bf46329042ef86db123fbd7d5751"

  url "https://dl.waveterm.dev/builds/waveterm-macos-universal-v#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://www.waveterm.dev/download"
    regex(/href=.*?dl\.waveterm\.dev.+-v(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: [
    "~/.waveterm",
  ]
end
