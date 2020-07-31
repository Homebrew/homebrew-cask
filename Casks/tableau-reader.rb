cask "tableau-reader" do
  version "2020.2.4"
  sha256 "9738090f46d266cf4222c5d1f8015f450faff598f54d08fbdda2fd396fdc8634"

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
