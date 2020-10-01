cask "tableau" do
  version "2020.3.1"
  sha256 "0a8476de84614c86da477a540e2f2fefbf3a6e0561e4567ce218c87acaa2adfa"

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/desktop/mac",
          must_contain: version.dots_to_hyphens
  name "Tableau Desktop"
  desc "Popular analytics platform"
  homepage "https://www.tableau.com/products/desktop/download"

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
