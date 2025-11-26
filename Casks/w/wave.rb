cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.12.5"
  sha256 arm:   "a57cae7d4446ec82b0010644addaf9aa12c05d49f58de6457aba5234d5b3dcfe",
         intel: "07ea22a75e5c525146ecf853359a05fdcc7642a42145763c2bc9487815e3f2cb"

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
  depends_on macos: ">= :monterey"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
