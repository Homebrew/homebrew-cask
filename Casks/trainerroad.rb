cask "trainerroad" do
  version "2020.47.111"
  sha256 "4b3fba4d40c1ef0bfb7d0b435536bd47fac48843f10b2e18337b3f494c5a0666"

  # trainrdtrcmn01un1softw01.blob.core.windows.net/ was verified as official when first introduced to the cask
  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad.dmg"
  appcast "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"
end
