cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "d2daa48367da811b639ebb3724f350bd90a64f28999071606290f95313bf6059",
         intel: "da378f18544e3ebdd2c2c54d3298032ea4e4258a8c13294f7e00e1990ea3d507"

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
