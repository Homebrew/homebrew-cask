cask "worksheetcrafter" do
  version "2026.2.5"
  sha256 "591681374f78f55e6c9f1fc258209eebab1a1a0f0d7044588dd7209ae70056f2"

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
