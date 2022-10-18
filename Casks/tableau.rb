cask "tableau" do
  version "2022.2.2"
  sha256 "c082a18d5eafd648476dda8b631387afb85e6f2b102a2dc63b54a72018c4ff9c"

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
