cask 'zotero' do
  version '5.0.66'
  sha256 '78710da06bdf7cab53e568673760df0164e510d08d6e68f7b39cb39c3249942f'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
