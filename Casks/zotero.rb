cask 'zotero' do
  version '5.0.45'
  sha256 'eb9df6f01b68ff9363f057960e8c1804e60e9c946633ec3d91924dfa2d1a1c58'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '92ae47cbfc519792b89c24aff896bec69fa568372154f5f54a380d46581d904a'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
