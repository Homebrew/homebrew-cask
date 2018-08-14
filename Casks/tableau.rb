cask 'tableau' do
  version '2018.2.0'
  sha256 '1a27af07d8fc3c5dc1db9befa40e761f73deba4d48fbf595206d5ea637194eb2'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Desktop'
  homepage 'https://public.tableau.com/s/'

  depends_on macos: '>= :yosemite'

  pkg 'Tableau Desktop.pkg'

  uninstall pkgutil: [
                       'com.amazon.redshiftodbc',
                       'simba.sparkodbc',
                       'com.simba.sparkodbc',
                       'com.simba.sqlserverodbc',
                       'com.tableausoftware.Desktop.app',
                       'com.tableausoftware.DesktopShortcut',
                       'com.tableausoftware.FLEXNet.11.*',
                       'com.tableausoftware.mysql',
                       'com.tableausoftware.oracle',
                       'com.tableausoftware.postgresql',
                     ]
end
