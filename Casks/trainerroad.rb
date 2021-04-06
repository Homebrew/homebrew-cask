cask "trainerroad" do
  version "2020.50.0.118"
  sha256 "cec74fc39756ff807fc838a1b20df8b8bfe2882fea30391af3e91fb6fc188699"

  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad-#{version}.dmg",
      verified: "trainrdtrcmn01un1softw01.blob.core.windows.net/"
  appcast "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"
end
