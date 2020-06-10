cask 'tableau-prep' do
  version '2020.2.2'
  sha256 'ab34865c13702c168e7ca20e979f1794017599e50f1df93b3e79611cfe934e73'

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/prep/mac',
          configuration: version.dots_to_hyphens
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
