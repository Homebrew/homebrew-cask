cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.11"
  sha256 arm:   "c8672de93cd793624083d96452a8c1304c37cd1f65b1bbd43afb10c8146a1f03",
         intel: "3169267b6fd40dec44b8696ffe4f78ef6346b002daf7ca3f25039006dfb0de73"

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
