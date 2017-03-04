cask 'zotero' do
  version '4.0.29.15'
  sha256 'a31fc874771ab9799ef3b23feb31a87dbed2d23b9c4c9cc44baad4294c34580d'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '767016f135332e3bebb815ab21b4ec54babb84de4f3d59b789bc55208945ef18'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
