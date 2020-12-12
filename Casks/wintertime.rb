cask "wintertime" do
  version "0.0.7"
  sha256 "b7cb5b25172e3450982d673533931e721e009677e711fffa320b5e42abee3ff3"

  url "https://github.com/actuallymentor/wintertime-mac-background-freezer/releases/download/#{version}/Wintertime-#{version}.dmg"
  appcast "https://github.com/actuallymentor/wintertime-mac-background-freezer/releases.atom"
  name "Wintertime"
  desc "Utility to freeze apps running in the background to save battery"
  homepage "https://github.com/actuallymentor/wintertime-mac-background-freezer"

  app "Wintertime.app"
end
