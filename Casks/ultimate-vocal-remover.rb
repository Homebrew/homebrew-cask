cask "ultimate-vocal-remover" do
  arch arm: "arm64", intel: "x86_64"

  version "5.5.0"
  sha256 arm:   "51f7927c04dea12e9e8acee9326eb195c5532c5142437633b0fbcaa92c5f4613",
         intel: "375c79e58cb1f7d8def6749b8f7a0ec3648e15c8743f0456a4523ed92f202682"

  url "https://github.com/Anjok07/ultimatevocalremovergui/releases/download/v#{version}/Ultimate_Vocal_Remover_v#{version.major_minor.dots_to_underscores}_MacOS_#{arch}.dmg"
  name "Ultimate Vocal Remover"
  desc "Removes vocals from audio files"
  homepage "https://github.com/Anjok07/ultimatevocalremovergui/"

  depends_on macos: ">= :catalina"

  app "Ultimate Vocal Remover.app"

  # No zap stanza required
end
