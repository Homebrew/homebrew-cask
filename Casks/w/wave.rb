cask "wave" do
  version "0.7.3"
  sha256 "57cc3ff233550763060ba6989523a537a2ae9997198880e18b9042654f865079"

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
