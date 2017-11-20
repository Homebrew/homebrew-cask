cask 'zotero' do
  version '5.0.27'
  sha256 'b4f339c5b4392c80ad126e8083becdc01e14b41b7067daea15bc14b9c56a1560'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '3bcdaff9b1cf6e6c7fe573047f7941e2491febcaa401fefd7691df3f157aba42'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
