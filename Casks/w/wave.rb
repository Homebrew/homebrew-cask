cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.10.4"
  sha256 arm:   "cef31079369446d6e05c8fd40451593597fa799dd03e15d9f3853dd7b8a0938e",
         intel: "77d32c0dea748a15272b1a2fbf429616a3d46caa7a190543931f67e1623d3a7d"

  url "https://dl.waveterm.dev/releases-w2/Wave-darwin-#{arch}-#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://dl.waveterm.dev/releases-w2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
