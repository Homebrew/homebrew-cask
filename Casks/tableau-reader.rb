cask "tableau-reader" do
  version "2020.3.2"
  sha256 "7bec29a01bfccfef5e8373b2ee12374a47e990f6efc86e6712e7359fe1a66821"

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
