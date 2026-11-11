cask "worksheetcrafter" do
  version "2026.3.6"
  sha256 "e2565f2536a6d1600f2f3ff5e9f2f70232ad3ae74f3d75cbdd6f646fcd26d580"

  url "https://website.cdn.getschoolcraft.com/downloads/worksheet-crafter_#{version}.pkg"
  name "WorksheetCrafter"
  desc "Worksheet and lesson material creator"
  homepage "https://worksheetcrafter.com/"

  livecheck do
    url "https://worksheetcrafter.com/download/worksheet-crafter/mac/latest"
    strategy :header_match
  end

  depends_on :macos

  pkg "worksheet-crafter_#{version}.pkg"

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
