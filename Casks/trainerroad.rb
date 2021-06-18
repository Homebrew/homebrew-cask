cask "trainerroad" do
  version "2021.18.1.132"
  sha256 "a22f059f4e1bf85734f91a0eab3f86760f8d407df497b8d86d8b19139effaacb"

  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad-#{version}.dmg",
      verified: "trainrdtrcmn01un1softw01.blob.core.windows.net/"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  livecheck do
    url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
    strategy :page_match
    regex(/url:\s*TrainerRoad-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :el_capitan"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"
end
