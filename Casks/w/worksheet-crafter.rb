cask "worksheet-crafter" do
  version "2026.1.3"
  sha256 "de3ccfe568a1ebca0e868e5d03ce68cc16ac6ea37a07405a7a6e5e923d7d1ba8"

  url "https://website.cdn.getschoolcraft.com/downloads/worksheet-crafter_#{version}.pkg",
      verified: "website.cdn.getschoolcraft.com/downloads/"
  name "Worksheet Crafter"
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
