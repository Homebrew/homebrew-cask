cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "4e09cfbbedcb5c62ef726d775dd191ed8a56592ec42632b5e8fd28bd2a0f89fa",
         intel: "e90459015c042709201130026b4b4695cf75adcb8625c1af85224f3aa1875ade"

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
