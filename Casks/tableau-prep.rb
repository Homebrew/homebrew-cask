cask 'tableau-prep' do
  version '2019.2.1'
  sha256 '54ea5395bca454fff9d48500633aa866e6fa80828896a477baa4148051c5ba74'

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/prep/mac'
  name 'Tableau Prep'
  homepage 'https://www.tableau.com/support/releases/prep'

  depends_on macos: '>= :el_capitan'

  pkg 'Tableau Prep Builder.pkg'

  uninstall pkgutil: [
                       'com.amazon.redshiftodbc',
                       'simba.sparkodbc',
                       'com.simba.sparkodbc',
                       'com.simba.sqlserverodbc',
                       'com.tableausoftware.Maestro.app',
                       'com.tableausoftware.desktopShortcut',
                       'com.tableausoftware.telemetry',
                       'com.tableausoftware.FLEXNet.11.*',
                       'com.tableausoftware.oracle',
                       'com.tableausoftware.postgresql',
                     ]
end
