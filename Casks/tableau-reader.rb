cask "tableau-reader" do
  version "2020.3.0"
  sha256 "49c0782f6a5901f678a341e39b7325f84908cad54c961995ed806e4a7be46266"

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/reader/mac",
          must_contain: version.dots_to_hyphens
  name "Tableau Reader"
  homepage "https://www.tableau.com/products/reader"

  pkg "Tableau Reader.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Reader.app",
  ]
end
