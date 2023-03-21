cask "wxcrafter" do
  version :latest
  sha256 :no_check
  desc "RAD plugin for developing wxWidgets UI applications"

  url "https://codelite.org/downloads/wxCrafter/wxCrafterDownloads.php?osx"
  name "wxCrafter"
  homepage "https://wxcrafter.codelite.org/"

  app "wxCrafter.app"

  zap trash: [
    "~/Library/Application Support/wxcrafter",
    "~/Library/Preferences/wxcrafter.plist",
  ]
  caveats do
    discontinued
  end
end
