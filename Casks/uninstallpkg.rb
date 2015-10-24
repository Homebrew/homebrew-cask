cask :v1 => 'uninstallpkg' do
  version '1.0.17'
  sha256 '1ee7fecb7e465fc7f2995b22f7e7919915540d3e43e82fdf256a0ac78ba8fac2'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          :sha256 => '7dd7eeff9077187fbf1d8f1aeefc896ff15c3f080fe46d1dfc0583a078350a43'
  name 'UninstallPKG'
  homepage 'https://www.corecode.at/uninstallpkg/'
  license :freemium

  app 'UninstallPKG.app'

  zap :delete => [
                  '~/Library/Preferences/com.corecode.UninstallPKG.plist',
                  '~/Library/Application Support/UninstallPKG/',
                  '~/Library/Saved Application State/com.corecode.UninstallPKG.savedState/',
                  '/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper',
                  '/Library/LaunchDaemons/com.corecode.UninstallPKGDeleteHelper.plist'
                 ]
end
