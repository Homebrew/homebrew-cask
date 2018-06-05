cask 'zotero' do
  version '5.0.48'
  sha256 '6ccede2d8276b82b1090dc23332e1b6904dcd6f25fa30b18f90daf3983b5f761'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'e94fb9ab4e1cdb0d214c77fac0ee8895cd9805bd0ecfba981e4c58bda660c98f'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
