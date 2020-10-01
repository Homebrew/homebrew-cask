cask "tableau-reader" do
  version "2020.3.1"
  sha256 "5d4faa90a351074a29151b1954a8fefb357fdb04903c45e70e2ccea93a85ba3d"

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
