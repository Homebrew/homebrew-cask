cask 'tableau-prep' do
  version '2019.1.1'
  sha256 '392db25721e22d93e8489ab07b6a6107b8c66db5eee0cf97e844601717c50d47'

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
