cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.7"
  sha256 arm:   "d81e34e90f583104e6b6a0efef676498d12a0413fffa71d13303e61fc9a3b837",
         intel: "0c7c29c9b2bdd292e61bdffb71e440f9df4c854e3aa94a0d712ff65d76d5cf86"

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
