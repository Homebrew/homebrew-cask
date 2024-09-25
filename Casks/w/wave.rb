cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "b1e7e440e3e9d5ed49caa54e3585bec796a69ccc36636b754105e75661475f73",
         intel: "83d060ba32b4b42932d131235a423aa9826dbe8815cb88c240c9d3286a3d4ffc"

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
