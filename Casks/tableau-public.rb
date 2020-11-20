cask "tableau-public" do
  version "2020.3.3"
  sha256 "ad672a91af5aad94569ab83a05d8a4fdebb266a827851b2737c3916732a3af18"

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
