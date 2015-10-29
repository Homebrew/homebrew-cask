cask :v1 => 'uninstallpkg' do
  version '1.0.18'
  sha256 '4ade68a65f1afdc22c80ca6342ef9552fea6f365f5ba2ceedbb2ba488f6ef277'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          :sha256 => 'd719d393732ec686cbfa067911f0679439e3f88eb274a1225c30f704db1c43a4'
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
