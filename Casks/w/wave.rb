cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.6"
  sha256 arm:   "844437e9f1085278331b9d619f96cd0e874570641b290ee54d3787e9e4c42747",
         intel: "342751c1f5f821d10b513360e8ab4835c6cca1584614be19f50a1ac19d3ef5d3"

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
