cask 'zotero' do
  version '5.0.47'
  sha256 'bb1685bf298b095f2cd1db9d2e9a16aaed242b2cb26e1ad4a10f38c90ba53c25'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'e94fb9ab4e1cdb0d214c77fac0ee8895cd9805bd0ecfba981e4c58bda660c98f'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
