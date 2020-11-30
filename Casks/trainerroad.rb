cask "trainerroad" do
  version "2020.47.112"
  sha256 "371a2014e0c1c9cba159acf7dae606f7e6e265f8bf4d4a06eea549b23349b52d"

  # trainrdtrcmn01un1softw01.blob.core.windows.net/ was verified as official when first introduced to the cask
  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad.dmg"
  appcast "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"
end
