class Zotero < Cask
  version '4.0.21.5'
  sha256 '0c5b7fd612f44e6efdcec7d9dc050ddcb2586373e93c5fb40f846cc45df87a30'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  homepage 'http://www.zotero.org/'

  app 'Zotero.app'
end
