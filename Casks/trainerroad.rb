cask "trainerroad" do
  version "2020.47.117"
  sha256 "0bd5555d8d5d51cf55cad7d197f0c6d2a31542ba5997cf428a573c5f74cad33f"

  # trainrdtrcmn01un1softw01.blob.core.windows.net/ was verified as official when first introduced to the cask
  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad.dmg"
  appcast "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"
end
