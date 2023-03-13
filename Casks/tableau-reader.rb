cask "tableau-reader" do
  version "2022.4.1"
  sha256 "25e5603ba9f7034cf5bd786f4f6afad8ad6701caa93fdeab1e47d6a83c801419"

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
