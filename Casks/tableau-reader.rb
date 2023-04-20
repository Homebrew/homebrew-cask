cask "tableau-reader" do
  version "2023.1.0"
  sha256 "5f73ca83a3b8c0092378ca8ab6fe6fc1462e76eb7231560019a18370b2cb136f"

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name "Tableau Reader"
  desc "Open and interact with data visualizations built in Tableau Desktop"
  homepage "https://www.tableau.com/products/reader"

  livecheck do
    url "https://www.tableau.com/downloads/reader/mac"
    strategy :header_match do |headers|
      headers["location"][/-(\d+(?:-\d+)+)\.dmg/i, 1].tr("-", ".")
    end
  end

  pkg "Tableau Reader.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Reader.app",
  ]

  zap trash: [
    "/Library/Preferences/com.tableau.Tableau-Reader-*.plist",
    "~/Library/Preferences/com.tableau.Tableau-Reader-*.plist",
    "~/Library/Saved Application State/com.tableausoftware.tableaureader.savedState",
  ]
end
