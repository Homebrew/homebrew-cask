cask "tableau-prep" do
  version "2020.3.3"
  sha256 "bea583dd782c932bf6eb6eaf7ed6e69e2ea13eb808087ef6ea022791da8fce2b"

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/prep/mac",
          must_contain: version.dots_to_hyphens
  name "Tableau Prep"
  homepage "https://www.tableau.com/support/releases/prep"

  depends_on macos: ">= :el_capitan"

  pkg "Tableau Prep Builder.pkg"

  uninstall pkgutil: [
    "com.amazon.redshiftodbc",
    "simba.sparkodbc",
    "com.simba.sparkodbc",
    "com.simba.sqlserverodbc",
    "com.tableausoftware.Maestro.app",
    "com.tableausoftware.desktopShortcut",
    "com.tableausoftware.telemetry",
    "com.tableausoftware.FLEXNet.11.*",
    "com.tableausoftware.oracle",
    "com.tableausoftware.postgresql",
  ]
end
