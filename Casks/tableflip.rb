cask "tableflip" do
  version "1.2.3"
  sha256 "c6314c37dd1ceabf8de4755e3d0d545916e439b7b6b16ba3c67d9d6c65ab71b7"

  # update.christiantietze.de/tableflip/ was verified as official when first introduced to the cask
  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
  name "TableFlip"
  desc "App to edit markdown files in place"
  homepage "https://tableflipapp.com/"

  auto_updates true

  app "TableFlip.app"
end
