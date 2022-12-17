cask "tableflip" do
  version "1.4.0,65"
  sha256 "f16b19161e442180586fb99376fac7c90d8ae4c62837ecfb09374e7bed78656b"

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
