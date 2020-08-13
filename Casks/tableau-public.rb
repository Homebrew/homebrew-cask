cask "tableau-public" do
  version "2020.3.0"
  sha256 "4d53dd0300b48b081631234bfcda9f86fe601097e6bfcd380e8b7a445e823a0a"

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
