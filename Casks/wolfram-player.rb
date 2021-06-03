cask "wolfram-player" do
  version "12.3.0"
  sha256 "371371bcad5c42b8830e109e97d8926d7e1fa2cdd46116e2a5464df6bdd6efdc"

  url "https://account.wolfram.com/download/public/wolfram-player/#{version}/desktop/MAC"
  name "wolfram-player"
  desc "Tool to view and interact with Wolfram notebooks"
  homepage "https://www.wolfram.com/player"

  depends_on macos: ">= :mojave"

  app "Wolfram Player.app"

  zap trash: [
    "~/Library/WolframPlayer",
    "~/Library/Preferences/com.wolfram.Mathematica.Player.plist",
  ]
end
