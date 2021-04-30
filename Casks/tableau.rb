cask "tableau" do
  version "2021.1.1"
  sha256 "f379c9e8d2681cdf751e024c769205058d4acb4b2a9b85296030aa82aeab6321"

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
