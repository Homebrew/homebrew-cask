cask "wave" do
  version "0.7.6"
  sha256 "6fbe5e42752d790efaefe72b55efa059f05fecfaeb123a0d1554f1f2cfe34d73"

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
