cask "wave" do
  version "0.7.5"
  sha256 "0ab3c75455ee888e71d4cd291acafd6ca86872053bbe85f2ca4b73eeb2b09932"

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
