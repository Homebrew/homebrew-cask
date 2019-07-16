cask 'tableau' do
  version '2019.2.1'
  sha256 '184dc0996a0b0c8811740b09fd53ba2d14fbb4f4d9db76555cb74ae1e11d2deb'

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
