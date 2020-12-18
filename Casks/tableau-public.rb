cask "tableau-public" do
  version "2020.4.0"
  sha256 "3c19656d9832427ff5d7be88c8069dec280e31315c444434b6d82940ac504fc4"

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
