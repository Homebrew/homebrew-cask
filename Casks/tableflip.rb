cask "tableflip" do
  version "1.3.1,61"
  sha256 "c2c715a7bb8182f261571aab43ecb3ccdc401f410b27eb81d513b740cf16e37b"

  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version.csv.first}.zip",
      verified: "update.christiantietze.de/tableflip/"
  name "TableFlip"
  desc "App to edit markdown files in place"
  homepage "https://tableflipapp.com/"

  livecheck do
    url "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
    strategy :sparkle
  end

  auto_updates true

  app "TableFlip.app"
end
