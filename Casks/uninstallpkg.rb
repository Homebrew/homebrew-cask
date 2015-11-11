cask :v1 => 'uninstallpkg' do
  version '1.0.19'
  sha256 '8dd282c2c8b98f83ed7a7799629407443a95e8eef503f7926c3d3b60c8c001f8'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          :sha256 => '4beff1d471fe2195f83af01ce65cab90d24b0fcfa3738eee2d823385d23fdba3'
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
