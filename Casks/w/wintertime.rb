cask "wintertime" do
  version "0.0.7"
  sha256 "b7cb5b25172e3450982d673533931e721e009677e711fffa320b5e42abee3ff3"

  url "https://github.com/actuallymentor/wintertime-mac-background-freezer/releases/download/#{version}/Wintertime-#{version}.dmg"
  name "Wintertime"
  desc "Utility to freeze apps running in the background to save battery"
  homepage "https://github.com/actuallymentor/wintertime-mac-background-freezer"

  app "Wintertime.app"

  zap trash: [
    "~/Library/Application Support/Wintertime",
    "~/Library/Logs/Wintertime",
    "~/Library/Preferences/com.electron.wintertime.plist",
    "~/Library/Saved Application State/com.electron.wintertime.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
