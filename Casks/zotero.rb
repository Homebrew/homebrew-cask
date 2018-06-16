cask 'zotero' do
  version '5.0.51'
  sha256 '65d21f6659ab65e2bcc958695ba181a0e664cd42602e6ce795c3b216b375d9b2'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'aaa67485370c7b4a8a44c53b6480d4851d7958f57976ee1d3d5f3a606cfdc964'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
