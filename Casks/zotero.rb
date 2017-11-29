cask 'zotero' do
  version '5.0.29'
  sha256 '7800ecc0754cd175a9680f31af580b5725204c0d0e2461e44ed36f1d9a55da90'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '88a1b3c7a3c86413c162c2f11d83b35233c4505e194e8e6abb64421a7b103ff4'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
