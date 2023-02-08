cask "trainerroad" do
  version "2023.2.1.224"
  sha256 "404b380f35219475055f689c9cfe2065828ede02a7e604c7238e5b0b1161d958"

  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad-#{version}.dmg",
      verified: "trainrdtrcmn01un1softw01.blob.core.windows.net/"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  livecheck do
    url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
    regex(/url:\s*TrainerRoad[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :el_capitan"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"
end
