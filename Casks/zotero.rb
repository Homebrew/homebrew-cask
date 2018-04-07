cask 'zotero' do
  version '5.0.44'
  sha256 'b1b7c5bf1696d75cfd4b6b992751b7b87464873304771b5e4050cba7530b18a5'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '967904316f503acb2ed21df98df6d40e67665375f22a8b49390e9a13ba413108'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
