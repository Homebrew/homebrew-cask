cask 'uninstallpkg' do
  version '1.0.19'
  sha256 '8dd282c2c8b98f83ed7a7799629407443a95e8eef503f7926c3d3b60c8c001f8'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          :sha256 => '4ea9237e4f58b815dd3f7a23597076b95f12abb2c31feb65bc88c5e8113d1d60'
  name 'UninstallPKG'
  homepage 'https://www.corecode.at/uninstallpkg/'
  license :freemium

  app 'UninstallPKG.app'

  zap :delete => [
                   '~/Library/Preferences/com.corecode.UninstallPKG.plist',
                   '~/Library/Application Support/UninstallPKG/',
                   '~/Library/Saved Application State/com.corecode.UninstallPKG.savedState/',
                   '/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper',
                   '/Library/LaunchDaemons/com.corecode.UninstallPKGDeleteHelper.plist',
                 ]
end
