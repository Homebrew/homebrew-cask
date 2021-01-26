cask "tableau" do
  version "2020.4.1"
  sha256 "f461e2acef6618d796a7ef9ebcf1ea32eb5452f87a985067f4dee625e8aec5c0"

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name "Tableau Desktop"
  desc "Popular analytics platform"
  homepage "https://www.tableau.com/products/desktop/download"

  livecheck do
    url "https://www.tableau.com/downloads/desktop/mac"
    strategy :header_match do |headers|
      headers["location"][/-(\d+-\d+-\d+)\.dmg/i, 1].tr("-", ".")
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "Tableau Desktop.pkg"

  uninstall pkgutil: [
    "com.amazon.redshiftodbc",
    "simba.sparkodbc",
    "com.simba.sparkodbc",
    "com.simba.sqlserverodbc",
    "com.tableausoftware.Desktop.app",
    "com.tableausoftware.DesktopShortcut",
    "com.tableausoftware.FLEXNet.11.*",
    "com.tableausoftware.mysql",
    "com.tableausoftware.oracle",
    "com.tableausoftware.postgresql",
  ]
end
