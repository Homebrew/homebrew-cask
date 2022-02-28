cask "tableau" do
  version "2021.4.4"
  sha256 "7c5d0fbc42f1d2e5d0417346e8fb0842dc7b2cf93dd76fe82b05666c61608b79"

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name "Tableau Desktop"
  desc "Data visualization software"
  homepage "https://www.tableau.com/products/desktop"

  livecheck do
    url "https://www.tableau.com/downloads/desktop/mac"
    strategy :header_match do |headers|
      headers["location"][/TableauDesktop[._-]v?(\d+(?:-\d+)+)\.dmg/i, 1].tr("-", ".")
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "Tableau Desktop.pkg"

  uninstall pkgutil: [
    "com.amazon.redshiftodbc",
    "com.simba.sparkodbc",
    "com.simba.sqlserverodbc",
    "com.tableausoftware.Desktop.app",
    "com.tableausoftware.DesktopShortcut",
    "com.tableausoftware.FLEXNet.11.*",
    "com.tableausoftware.mysql",
    "com.tableausoftware.oracle",
    "com.tableausoftware.postgresql",
    "simba.sparkodbc",
  ]
end
