cask "tableau-public" do
  version "2020.2.4"
  sha256 "94efb115427863579b0bd259999bbba62255620038607f59a6d1a090f2601452"

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/public/mac",
          must_contain: version.dots_to_hyphens
  name "Tableau Public"
  homepage "https://public.tableau.com/s/"

  pkg "Tableau Public.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Public.app",
  ]
end
