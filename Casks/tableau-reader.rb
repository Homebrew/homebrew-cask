cask "tableau-reader" do
  version "2020.3.3"
  sha256 "e1d8884b44806a97a8bf474a8406d41168db70e959add202f03c2be720f3a464"

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
