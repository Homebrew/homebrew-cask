cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.12.3"
  sha256 arm:   "7299a59cc7f9023bdbc5176c2abc6223f0c62fffde42d34687da45fcd0d93302",
         intel: "be21bb5cd9ef6ecebd98c7141791c385b1f8eeeaf8a68467787b0bceab82181c"

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
