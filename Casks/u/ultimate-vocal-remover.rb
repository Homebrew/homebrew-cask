cask "ultimate-vocal-remover" do
  arch arm: "arm64", intel: "x86_64"

  version "5.6"
  sha256 arm:   "276b1bbcf0e5de3b25df53b0855f4ae0a37af2ecaf0c10f59389ec53ca3b4513",
         intel: "99f4528c6c98e82c441045b34d796ee1a36d6bc5ffe32ff6547da0a8514d9e0c"

  url "https://github.com/Anjok07/ultimatevocalremovergui/releases/download/v#{version}/Ultimate_Vocal_Remover_v#{version.major_minor.dots_to_underscores}_MacOS_#{arch}.dmg"
  name "Ultimate Vocal Remover"
  desc "Removes vocals from audio files"
  homepage "https://github.com/Anjok07/ultimatevocalremovergui/"

  depends_on macos: ">= :catalina"

  app "Ultimate Vocal Remover.app"

  # No zap stanza required
end
