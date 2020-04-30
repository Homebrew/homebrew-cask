cask 'tableau' do
  version '2020.1.3'
  sha256 'f36d814894be23ba5d097af1f8536f00e24b85169729cbbe7667b5033694fbe1'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/desktop/mac',
          configuration: version.dots_to_hyphens
  name 'Tableau Desktop'
  homepage 'https://www.tableau.com/products/desktop/download'

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
