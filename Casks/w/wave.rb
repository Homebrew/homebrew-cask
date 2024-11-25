cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "8e3d6b9a84d3d930b63b8a41bd8ea667db579cb08a1e17afb8ad2869276709b5",
         intel: "7a80436f59083e78cfb7faf44a863a17174a8c0ccb0801fa93f48b944a277daa"

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
