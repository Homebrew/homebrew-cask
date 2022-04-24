cask "tableau" do
  version "2022.1.1"
  sha256 "b3221f5c5d7ef982e225031a87af0a313e9b51550ca66c2e8a6b37bac364ca8c"

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
