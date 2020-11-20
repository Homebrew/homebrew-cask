cask "trainerroad" do
  version "2020.47.109"
  sha256 "8375aff2b7c69de9c5f0ec68e47abe2a4fbc7072ac5b5c67924f20dbc1eb92ca"

  # trainrdtrcmn01un1softw01.blob.core.windows.net/ was verified as official when first introduced to the cask
  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad.dmg"
  appcast "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
  name "TrainerRoad"
  homepage "https://www.trainerroad.com/"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"
end
