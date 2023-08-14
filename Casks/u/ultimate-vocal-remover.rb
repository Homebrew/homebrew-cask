cask "ultimate-vocal-remover" do
  arch arm: "arm64", intel: "x86_64"

  version "5.5.0"
  sha256 arm:   "fecc265d04f885f7aaf572a88003311155a0bd9c4c811e17e9ec78aa99b0da67",
         intel: "2804769a3a5976bdf1e9d3c32e8c9c056e17f83f17623275f4996f20623e9cb4"

  url "https://github.com/Anjok07/ultimatevocalremovergui/releases/download/v#{version}/Ultimate_Vocal_Remover_v#{version.major_minor.dots_to_underscores}_MacOS_#{arch}.dmg"
  name "Ultimate Vocal Remover"
  desc "Removes vocals from audio files"
  homepage "https://github.com/Anjok07/ultimatevocalremovergui/"

  depends_on macos: ">= :catalina"

  app "Ultimate Vocal Remover.app"

  # No zap stanza required
end
