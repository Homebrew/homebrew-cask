cask 'tableau' do
  version '2020.2.1'
  sha256 '8437d0fd125cdc76849adef9fffec0dbe162445d549811246d2f333cacc13db9'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/desktop/mac',
          must_contain: version.dots_to_hyphens
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
