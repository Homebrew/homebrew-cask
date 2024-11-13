cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "d73a8a04b18ae149ae0a8cc2cc5e0b95f47dac4efef58ab05d6302306e401986",
         intel: "e5e2a220764998d1a1c969dcb86551341bdea93e6d9da246e554796f8c174829"

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
