cask :v1 => 'uninstallpkg' do
  version '1.0.14'
  sha256 'c4ccabfe80a95d0a1557b56a4fadb5580df244a3cabe2ebcc690f2b3b5b24547'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          :sha256 => '20096694c8ec313ea720872ada6f32388bff5c3dce6590f9776532edf2cd5d7a'
  name 'UninstallPKG'
  homepage 'https://www.corecode.at/uninstallpkg/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'UninstallPKG.app'
end
