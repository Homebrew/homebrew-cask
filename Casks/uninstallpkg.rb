cask :v1 => 'uninstallpkg' do
  version '1.0.16'
  sha256 '4bd87dc410cac0d2fbe771ce220c577f547c0fcae1eedf5d8b60d4e62a823470'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          :sha256 => 'b02be19196c3db2347a9d7e133531011963c53bc60768e95acfbe03360d9acd0'
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
