cask 'tableau-prep' do
  version '2019.1.2'
  sha256 '964039fc8016b7a7ce33e12bf2ec5c7082dc44f944a5ff9053ea33bc91a0deb6'

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Prep'
  homepage 'https://www.tableau.com/support/releases/prep'

  depends_on macos: '>= :el_capitan'

  pkg 'Tableau Prep.pkg'

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
