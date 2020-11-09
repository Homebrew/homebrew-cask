cask "tableau-public" do
  version "2020.3.2"
  sha256 "3564d327f8b77c2e57aa42c8e4718ae61f555ba93fb65a4e3aec828d6c08ab56"

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
