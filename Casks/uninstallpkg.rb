cask :v1 => 'uninstallpkg' do
  version '1.0.15'
  sha256 '783162231d10790511da79f66d305c079bfd852705a7e36f66496f0d1d063de8'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          :sha256 => '98d2be956abe6a474278bfebdbec2c06570b1188d8242b4bdbb0dcf9a72127f2'
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
