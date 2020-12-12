cask "tableflip" do
  version "1.3.0"
  sha256 "b947ad412074ee1b4cd5b5982233aed23f84d623bf3b5b79f315677df323615f"

  # update.christiantietze.de/tableflip/ was verified as official when first introduced to the cask
  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
  name "TableFlip"
  desc "App to edit markdown files in place"
  homepage "https://tableflipapp.com/"

  auto_updates true

  app "TableFlip.app"
end
