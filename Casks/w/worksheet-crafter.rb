cask "worksheet-crafter" do
  version "2026.1.2"
  sha256 "efb517d9975075192c431779c63b1bec70178593964c4bf410f99e1ad4c4cf69"

  url "https://worksheetcrafter.com/download/worksheet-crafter/mac/#{version}"
  name "Worksheet Crafter"
  desc "Create your own lesson materials, quick and easy"
  homepage "https://worksheetcrafter.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  pkg "WorksheetCrafter.pkg"

  uninstall pkgutil: "com.schoolcraft.pkg.worksheetcrafter"

  zap trash: [
    "~/Library/Application Scripts/com.SchoolCraft.WorksheetCrafter.WsCQuickLook",
    "~/Library/Application Scripts/com.SchoolCraft.WorksheetCrafter.WsCThumbnail",
    "~/Library/Application Support/WorksheetCrafter",
    "~/Library/Containers/com.SchoolCraft.WorksheetCrafter.WsCQuickLook",
    "~/Library/Containers/com.SchoolCraft.WorksheetCrafter.WsCThumbnail",
    "~/Library/Containers/WorksheetCrafter",
    "~/Library/Preferences/com.schoolcraft.Worksheet Crafter.plist",
    "~/Library/Saved Application State/com.SchoolCraft.WillBeReplacedByQMake.savedState",
  ]
end
