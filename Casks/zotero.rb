cask 'zotero' do
  version '4.0.29.15'
  sha256 'a31fc874771ab9799ef3b23feb31a87dbed2d23b9c4c9cc44baad4294c34580d'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '698f6c205c06e891ddca54f6c3b80b48369cdfbff987274556bf2b0342b3e119'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
