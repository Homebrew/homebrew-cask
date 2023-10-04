cask "ultimate-vocal-remover" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6"
  sha256 arm:   "c3e7641413c23122d0f27356a2a3c21e776ab350f123d8f939bb7f8ffacd4c82",
         intel: "4f9b9dcaecab7cc7c03e1c36b4fc21a1e77f6f808067f42d7767b06c94d3aba1"

  url "https://github.com/Anjok07/ultimatevocalremovergui/releases/download/v#{version}/Ultimate_Vocal_Remover_v#{version.major_minor.dots_to_underscores}_MacOS_#{arch}.dmg"
  name "Ultimate Vocal Remover"
  desc "Removes vocals from audio files"
  homepage "https://github.com/Anjok07/ultimatevocalremovergui/"

  depends_on macos: ">= :catalina"

  app "Ultimate Vocal Remover.app"

  # No zap stanza required
end
