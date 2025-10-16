cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "0a69a32961c480b7e9516716c7d68adee3283e36c7e3a728fad53e1e89b097a6",
         intel: "28021668e46ce378bd29009b0542b649f6a22b913c8e44b628a4c07b89fe51eb"

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
