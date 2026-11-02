cask "worksheetcrafter" do
  version "2026.3.4"
  sha256 "dcc79e2f5509afc0dba43d1a7b857b7112536e8c848095f3ecb7b4d934c55683"

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
