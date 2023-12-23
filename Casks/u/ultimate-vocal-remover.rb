cask "ultimate-vocal-remover" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6"
  sha256 arm:   "3b3d925c0af0a3a72e44629db137240f4d22ac1e8b3156599c36164fffe55249",
         intel: "d822058155514387e769b053c1850541a87aff9052dcf945cf51bb1525e7e996"

  url "https://github.com/Anjok07/ultimatevocalremovergui/releases/download/v#{version}/Ultimate_Vocal_Remover_v#{version.major_minor.dots_to_underscores}_MacOS_#{arch}.dmg"
  name "Ultimate Vocal Remover"
  desc "Removes vocals from audio files"
  homepage "https://github.com/Anjok07/ultimatevocalremovergui/"

  depends_on macos: ">= :catalina"

  app "Ultimate Vocal Remover.app"

  # No zap stanza required
end
